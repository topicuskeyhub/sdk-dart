import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/provisioning/token_password.dart';

/// Builds and executes requests for operations under \account\provisioning\tokenpwd
class TokenpwdRequestBuilder extends BaseRequestBuilder<TokenpwdRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     TokenpwdRequestBuilder clone() {
        return TokenpwdRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [TokenpwdRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     TokenpwdRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/provisioning/tokenpwd", pathParameters) ;
    /// Instantiates a new [TokenpwdRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     TokenpwdRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/provisioning/tokenpwd", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the user's rotating password as it is set for the current user.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<TokenPassword?> getAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TokenPassword>(requestInfo, TokenPassword.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the user's rotating password as it is set for the current user.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}
