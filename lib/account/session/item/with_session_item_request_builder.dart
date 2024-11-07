import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/error_report.dart';

/// Builds and executes requests for operations under \account\session\{sessionId}
class WithSessionItemRequestBuilder extends BaseRequestBuilder<WithSessionItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithSessionItemRequestBuilder clone() {
        return WithSessionItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithSessionItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithSessionItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/session/{sessionId}", pathParameters) ;
    /// Instantiates a new [WithSessionItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithSessionItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/session/{sessionId}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Ends the given session for the current user. Access tokens issued for the session will be revoked.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<Iterable<int>?> deleteAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendPrimitiveCollection<int>(requestInfo, errorMapping);
    }
    /// Ends the given session for the current user. Access tokens issued for the session will be revoked.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toDeleteRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74, application/vnd.topicus.keyhub+xml;version=74');
        return requestInfo;
    }
}
