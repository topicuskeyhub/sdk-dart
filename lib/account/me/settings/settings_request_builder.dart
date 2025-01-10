// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/auth/account_settings.dart';
import '../../../models/error_report.dart';
import './locale/locale_request_builder.dart';

/// auto generated
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
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    SettingsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/me/settings", pathParameters) ;
    /// Instantiates a new [SettingsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    SettingsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/me/settings", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns an overview of the settings selected by the current user.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccountSettings?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountSettings>(requestInfo, AccountSettings.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns an overview of the settings selected by the current user.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=75');
        return requestInfo;
    }
}
