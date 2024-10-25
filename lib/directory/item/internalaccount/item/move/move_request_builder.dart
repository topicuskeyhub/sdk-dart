import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../../../models/auth/move_internal_account.dart';
import '../../../../../models/error_report.dart';

/// Builds and executes requests for operations under \directory\{directoryid}\internalaccount\{internalaccountid}\move
class MoveRequestBuilder extends BaseRequestBuilder<MoveRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     MoveRequestBuilder clone() {
        return MoveRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [MoveRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     MoveRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/directory/{directoryid}/internalaccount/{internalaccountid}/move", pathParameters) ;
    /// Instantiates a new [MoveRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     MoveRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/directory/{directoryid}/internalaccount/{internalaccountid}/move", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Move the internal account specified by the given id to a different directory.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<void> postAsync(MoveInternalAccount body, [Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Move the internal account specified by the given id to a different directory.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPostRequestInformation(MoveInternalAccount body, [Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=73', body);
        return requestInfo;
    }
}
