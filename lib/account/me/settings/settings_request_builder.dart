import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/auth/account_settings.dart';
import '../../../models/error_report.dart';
import './locale/locale_request_builder.dart';

/// Builds and executes requests for operations under \account\me\settings
class SettingsRequestBuilder extends BaseRequestBuilder<SettingsRequestBuilder> {
    ///  The locale property
    LocaleRequestBuilder get locale {
        return LocaleRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    SettingsRequestBuilder clone() {
        return SettingsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [SettingsRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    SettingsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/me/settings", pathParameters) ;
    /// Instantiates a new [SettingsRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    SettingsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/me/settings", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns an overview of the settings selected by the current user.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<AccountSettings?> getAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountSettings>(requestInfo, AccountSettings.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns an overview of the settings selected by the current user.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}
