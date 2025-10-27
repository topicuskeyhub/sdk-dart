// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/auth/stored_user_session_linkable_wrapper.dart';
import '../../models/error_report.dart';
import './item/with_session_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \account\session
class SessionRequestBuilder extends BaseRequestBuilder<SessionRequestBuilder> {
    /// Gets an item from the ApiSdk.account.session.item collection
    ///  [sessionId] Unique identifier of the item
    WithSessionItemRequestBuilder bySessionId(String sessionId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('sessionId', () => sessionId);
        return WithSessionItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    SessionRequestBuilder clone() {
        return SessionRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [SessionRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    SessionRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/session", pathParameters) ;
    /// Instantiates a new [SessionRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    SessionRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/session", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Ends all sessions for the current user except the current session. Access tokens issued for these sessions will be revoked.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns a list of active sessions for the current user.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<StoredUserSessionLinkableWrapper?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<StoredUserSessionLinkableWrapper>(requestInfo, StoredUserSessionLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Ends all sessions for the current user except the current session. Access tokens issued for these sessions will be revoked.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=81');
        return requestInfo;
    }
    /// Returns a list of active sessions for the current user.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=81');
        return requestInfo;
    }
}
