// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error_report.dart';

/// auto generated
/// Builds and executes requests for operations under \webhook\{webhookid}\delivery\{deliveryid}\redeliver
class RedeliverRequestBuilder extends BaseRequestBuilder<RedeliverRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RedeliverRequestBuilder clone() {
        return RedeliverRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RedeliverRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RedeliverRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhook/{webhookid}/delivery/{deliveryid}/redeliver", pathParameters) ;
    /// Instantiates a new [RedeliverRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RedeliverRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhook/{webhookid}/delivery/{deliveryid}/redeliver", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Perform a redelivery of the webhook payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Perform a redelivery of the webhook payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
}
