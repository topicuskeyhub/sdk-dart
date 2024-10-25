import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/error_report.dart';

/// Builds and executes requests for operations under \request\{requestid}\cancel
class CancelRequestBuilder extends BaseRequestBuilder<CancelRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     CancelRequestBuilder clone() {
        return CancelRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [CancelRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     CancelRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/request/{requestid}/cancel", pathParameters) ;
    /// Instantiates a new [CancelRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     CancelRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/request/{requestid}/cancel", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Cancel a modification request.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<void> postAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Cancel a modification request.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPostRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}
