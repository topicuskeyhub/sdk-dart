import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/error_report.dart';

/// Builds and executes requests for operations under \group\{groupid}\requestaudit
class RequestauditRequestBuilder extends BaseRequestBuilder<RequestauditRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RequestauditRequestBuilder clone() {
        return RequestauditRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RequestauditRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    RequestauditRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/requestaudit", pathParameters) ;
    /// Instantiates a new [RequestauditRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    RequestauditRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/requestaudit", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Request an audit from the managers of the group identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<void> postAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Request an audit from the managers of the group identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPostRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}
