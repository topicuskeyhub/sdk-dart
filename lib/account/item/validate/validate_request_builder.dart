// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/auth/account.dart';
import '../../../models/error_report.dart';

/// auto generated
/// Builds and executes requests for operations under \account\{accountid}\validate
class ValidateRequestBuilder extends BaseRequestBuilder<ValidateRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ValidateRequestBuilder clone() {
        return ValidateRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ValidateRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ValidateRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/validate", pathParameters) ;
    /// Instantiates a new [ValidateRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ValidateRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/validate", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Checks the validity of the account in its directory and returns the updated status.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<Account?> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<Account>(requestInfo, Account.createFromDiscriminatorValue, errorMapping);
    }
    /// Checks the validity of the account in its directory and returns the updated status.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=82');
        return requestInfo;
    }
}
