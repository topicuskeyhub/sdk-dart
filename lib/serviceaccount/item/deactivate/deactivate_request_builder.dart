import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/error_report.dart';

/// Builds and executes requests for operations under \serviceaccount\{serviceaccountid}\deactivate
class DeactivateRequestBuilder extends BaseRequestBuilder<DeactivateRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    DeactivateRequestBuilder clone() {
        return DeactivateRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [DeactivateRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    DeactivateRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/serviceaccount/{serviceaccountid}/deactivate", pathParameters) ;
    /// Instantiates a new [DeactivateRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    DeactivateRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/serviceaccount/{serviceaccountid}/deactivate", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Deactivates the service account. 
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<void> postAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Deactivates the service account. 
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPostRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}
