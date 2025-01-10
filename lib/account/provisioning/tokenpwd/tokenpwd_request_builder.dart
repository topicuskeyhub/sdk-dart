// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/provisioning/token_password.dart';

/// auto generated
/// Builds and executes requests for operations under \account\provisioning\tokenpwd
class TokenpwdRequestBuilder extends BaseRequestBuilder<TokenpwdRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    TokenpwdRequestBuilder clone() {
        return TokenpwdRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [TokenpwdRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TokenpwdRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/provisioning/tokenpwd", pathParameters) ;
    /// Instantiates a new [TokenpwdRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TokenpwdRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/provisioning/tokenpwd", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the user's rotating password as it is set for the current user.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TokenPassword?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TokenPassword>(requestInfo, TokenPassword.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the user's rotating password as it is set for the current user.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=75');
        return requestInfo;
    }
}
