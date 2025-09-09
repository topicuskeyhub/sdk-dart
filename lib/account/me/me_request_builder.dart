// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/auth/account.dart';
import '../../models/error_report.dart';
import './notifications/notifications_request_builder.dart';
import './settings/settings_request_builder.dart';

/// auto generated
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
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    MeRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/me", pathParameters) ;
    /// Instantiates a new [MeRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    MeRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/me", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the account of the currently authenticated user. The returned account will contain a complete list of all permissions of the account, restricted by the scope of the access token.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<Account?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<Account>(requestInfo, Account.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the account of the currently authenticated user. The returned account will contain a complete list of all permissions of the account, restricted by the scope of the access token.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=80');
        return requestInfo;
    }
}
