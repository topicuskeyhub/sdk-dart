// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/auth/move_internal_account.dart';
import '../../../../../models/error_report.dart';

/// auto generated
/// Builds and executes requests for operations under \directory\{directoryid}\internalaccount\{internalaccountid}\move
class MoveRequestBuilder extends BaseRequestBuilder<MoveRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    MoveRequestBuilder clone() {
        return MoveRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [MoveRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    MoveRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/directory/{directoryid}/internalaccount/{internalaccountid}/move", pathParameters) ;
    /// Instantiates a new [MoveRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    MoveRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/directory/{directoryid}/internalaccount/{internalaccountid}/move", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Move the internal account specified by the given id to a different directory.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> postAsync(MoveInternalAccount body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Move the internal account specified by the given id to a different directory.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(MoveInternalAccount body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=80');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=80', body);
        return requestInfo;
    }
}
