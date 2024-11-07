import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/webhook/webhook.dart';
import './delivery/delivery_request_builder.dart';
import './with_webhook_item_request_builder_get_query_parameters.dart';
import './with_webhook_item_request_builder_put_query_parameters.dart';

/// Builds and executes requests for operations under \webhook\{webhookid}
class WithWebhookItemRequestBuilder extends BaseRequestBuilder<WithWebhookItemRequestBuilder> {
    ///  The delivery property
    DeliveryRequestBuilder get delivery {
        return DeliveryRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithWebhookItemRequestBuilder clone() {
        return WithWebhookItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithWebhookItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithWebhookItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhook/{webhookid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithWebhookItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithWebhookItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhook/{webhookid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Removes the specified webhook.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<void> deleteAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the single webhook.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<Webhook?> getAsync([Function(RequestConfiguration<WithWebhookItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<Webhook>(requestInfo, Webhook.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the webhook identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<Webhook?> putAsync(Webhook body, [Function(RequestConfiguration<WithWebhookItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<Webhook>(requestInfo, Webhook.createFromDiscriminatorValue, errorMapping);
    }
    /// Removes the specified webhook.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toDeleteRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Returns the single webhook.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithWebhookItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithWebhookItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithWebhookItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Updates the webhook identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPutRequestInformation(Webhook body, [Function(RequestConfiguration<WithWebhookItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithWebhookItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithWebhookItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
