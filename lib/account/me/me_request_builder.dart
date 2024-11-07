import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/auth/account.dart';
import '../../models/error_report.dart';
import './notifications/notifications_request_builder.dart';
import './settings/settings_request_builder.dart';

/// Builds and executes requests for operations under \account\me
class MeRequestBuilder extends BaseRequestBuilder<MeRequestBuilder> {
    ///  The notifications property
    NotificationsRequestBuilder get notifications {
        return NotificationsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The settings property
    SettingsRequestBuilder get settings {
        return SettingsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    MeRequestBuilder clone() {
        return MeRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [MeRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    MeRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/me", pathParameters) ;
    /// Instantiates a new [MeRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    MeRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/me", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the account of the currently authenticated user. The returned account will contain a complete list of all permissions of the account, restricted by the scope of the access token.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<Account?> getAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<Account>(requestInfo, Account.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the account of the currently authenticated user. The returned account will contain a complete list of all permissions of the account, restricted by the scope of the access token.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}
