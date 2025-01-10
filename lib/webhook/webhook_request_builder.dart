// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/webhook/webhook_linkable_wrapper.dart';
import './item/with_webhook_item_request_builder.dart';
import './webhook_request_builder_get_query_parameters.dart';
import './webhook_request_builder_post_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \webhook
class WebhookRequestBuilder extends BaseRequestBuilder<WebhookRequestBuilder> {
    /// Gets an item from the ApiSdk.webhook.item collection
    ///  [webhookid] Unique identifier of the item
    WithWebhookItemRequestBuilder byWebhookid(int webhookid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('webhookid', () => webhookid);
        return WithWebhookItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WebhookRequestBuilder clone() {
        return WebhookRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WebhookRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WebhookRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhook{?account*,active*,additional*,any*,appAdminGroup*,appOwnerGroup*,client*,contentAdminGroup*,createdAfter*,createdBefore*,directory*,directoryOwnerGroup*,exclude*,expiredCertificate*,global*,group*,id*,modifiedSince*,nameContains*,q*,serviceAccount*,serviceAccountNotNull*,sort*,system*,systemAdminGroup*,systemOwnerGroup*,tls*,type*,url*,uuid*}", pathParameters) ;
    /// Instantiates a new [WebhookRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WebhookRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhook{?account*,active*,additional*,any*,appAdminGroup*,appOwnerGroup*,client*,contentAdminGroup*,createdAfter*,createdBefore*,directory*,directoryOwnerGroup*,exclude*,expiredCertificate*,global*,group*,id*,modifiedSince*,nameContains*,q*,serviceAccount*,serviceAccountNotNull*,sort*,system*,systemAdminGroup*,systemOwnerGroup*,tls*,type*,url*,uuid*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Queries over all webhooks. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<WebhookLinkableWrapper?> getAsync([void Function(RequestConfiguration<WebhookRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<WebhookLinkableWrapper>(requestInfo, WebhookLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new webhooks and returns the newly created webhooks.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<WebhookLinkableWrapper?> postAsync(WebhookLinkableWrapper body, [void Function(RequestConfiguration<WebhookRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<WebhookLinkableWrapper>(requestInfo, WebhookLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Queries over all webhooks. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WebhookRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WebhookRequestBuilderGetQueryParameters>(requestConfiguration, () => WebhookRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=75');
        return requestInfo;
    }
    /// Creates one or more new webhooks and returns the newly created webhooks.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(WebhookLinkableWrapper body, [void Function(RequestConfiguration<WebhookRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WebhookRequestBuilderPostQueryParameters>(requestConfiguration, () => WebhookRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=75');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=75', body);
        return requestInfo;
    }
}
