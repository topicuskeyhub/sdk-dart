import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/webhook/webhook_linkable_wrapper.dart';
import './item/with_webhook_item_request_builder.dart';
import './webhook_request_builder_get_query_parameters.dart';
import './webhook_request_builder_post_query_parameters.dart';

/// Builds and executes requests for operations under \webhook
class WebhookRequestBuilder extends BaseRequestBuilder<WebhookRequestBuilder> {
    /// Gets an item from the ApiSdk.webhook.item collection
    /// <param name="webhookid">webhookid</param>
    WithWebhookItemRequestBuilder byWebhookid(int webhookid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("webhookid", ()=> webhookid);
        return WithWebhookItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WebhookRequestBuilder clone() {
        return WebhookRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WebhookRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WebhookRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhook{?account*,active*,additional*,any*,appAdminGroup*,appOwnerGroup*,client*,contentAdminGroup*,createdAfter*,createdBefore*,directory*,directoryOwnerGroup*,exclude*,expiredCertificate*,global*,group*,id*,modifiedSince*,nameContains*,q*,serviceAccount*,serviceAccountNotNull*,sort*,system*,systemAdminGroup*,systemOwnerGroup*,tls*,type*,url*,uuid*}", pathParameters) ;
    /// Instantiates a new [WebhookRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WebhookRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhook{?account*,active*,additional*,any*,appAdminGroup*,appOwnerGroup*,client*,contentAdminGroup*,createdAfter*,createdBefore*,directory*,directoryOwnerGroup*,exclude*,expiredCertificate*,global*,group*,id*,modifiedSince*,nameContains*,q*,serviceAccount*,serviceAccountNotNull*,sort*,system*,systemAdminGroup*,systemOwnerGroup*,tls*,type*,url*,uuid*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Queries over all webhooks. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<WebhookLinkableWrapper?> getAsync([Function(RequestConfiguration<WebhookRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<WebhookLinkableWrapper>(requestInfo, WebhookLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new webhooks and returns the newly created webhooks.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<WebhookLinkableWrapper?> postAsync(WebhookLinkableWrapper body, [Function(RequestConfiguration<WebhookRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<WebhookLinkableWrapper>(requestInfo, WebhookLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Queries over all webhooks. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<WebhookRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WebhookRequestBuilderGetQueryParameters>(requestConfiguration, () => WebhookRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Creates one or more new webhooks and returns the newly created webhooks.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPostRequestInformation(WebhookLinkableWrapper body, [Function(RequestConfiguration<WebhookRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WebhookRequestBuilderPostQueryParameters>(requestConfiguration, () => WebhookRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
