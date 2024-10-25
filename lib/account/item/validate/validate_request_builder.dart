import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/auth/account.dart';
import '../../../models/error_report.dart';

/// Builds and executes requests for operations under \account\{accountid}\validate
class ValidateRequestBuilder extends BaseRequestBuilder<ValidateRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     ValidateRequestBuilder clone() {
        return ValidateRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ValidateRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     ValidateRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/validate", pathParameters) ;
    /// Instantiates a new [ValidateRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     ValidateRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/validate", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Checks the validity of the account in its directory and returns the updated status.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<Account?> postAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<Account>(requestInfo, Account.createFromDiscriminatorValue, errorMapping);
    }
    /// Checks the validity of the account in its directory and returns the updated status.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPostRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}
