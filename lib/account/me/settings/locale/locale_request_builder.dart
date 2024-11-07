import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../../models/auth/account_change_locale.dart';
import '../../../../models/error_report.dart';

/// Builds and executes requests for operations under \account\me\settings\locale
class LocaleRequestBuilder extends BaseRequestBuilder<LocaleRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    LocaleRequestBuilder clone() {
        return LocaleRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [LocaleRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    LocaleRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/me/settings/locale", pathParameters) ;
    /// Instantiates a new [LocaleRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    LocaleRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/me/settings/locale", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Updates the locale for the current user.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<void> postAsync(AccountChangeLocale body, [Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Updates the locale for the current user.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPostRequestInformation(AccountChangeLocale body, [Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
