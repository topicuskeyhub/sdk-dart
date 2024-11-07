import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../../../models/error_report.dart';

/// Builds and executes requests for operations under \webhook\{webhookid}\delivery\{deliveryid}\redeliver
class RedeliverRequestBuilder extends BaseRequestBuilder<RedeliverRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RedeliverRequestBuilder clone() {
        return RedeliverRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RedeliverRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    RedeliverRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhook/{webhookid}/delivery/{deliveryid}/redeliver", pathParameters) ;
    /// Instantiates a new [RedeliverRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    RedeliverRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhook/{webhookid}/delivery/{deliveryid}/redeliver", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Perform a redelivery of the webhook payload.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<void> postAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Perform a redelivery of the webhook payload.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPostRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}
