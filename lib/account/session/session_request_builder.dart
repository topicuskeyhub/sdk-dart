import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/auth/stored_user_session_linkable_wrapper.dart';
import '../../models/error_report.dart';
import './item/with_session_item_request_builder.dart';

/// Builds and executes requests for operations under \account\session
class SessionRequestBuilder extends BaseRequestBuilder<SessionRequestBuilder> {
    /// Gets an item from the ApiSdk.account.session.item collection
    /// <param name="sessionId">sessionId</param>
    WithSessionItemRequestBuilder bySessionId(String sessionId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("sessionId", ()=> sessionId);
        return WithSessionItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    SessionRequestBuilder clone() {
        return SessionRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [SessionRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    SessionRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/session", pathParameters) ;
    /// Instantiates a new [SessionRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    SessionRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/session", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Ends all sessions for the current user except the current session. Access tokens issued for these sessions will be revoked.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<Iterable<int>?> deleteAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendPrimitiveCollection<int>(requestInfo, errorMapping);
    }
    /// Returns a list of active sessions for the current user.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<StoredUserSessionLinkableWrapper?> getAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<StoredUserSessionLinkableWrapper>(requestInfo, StoredUserSessionLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Ends all sessions for the current user except the current session. Access tokens issued for these sessions will be revoked.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toDeleteRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74, application/vnd.topicus.keyhub+xml;version=74');
        return requestInfo;
    }
    /// Returns a list of active sessions for the current user.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}