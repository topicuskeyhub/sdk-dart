import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import '../../../../models/vault/vault_recovery.dart';

/// Builds and executes requests for operations under \account\{accountid}\vault\recover
class RecoverRequestBuilder extends BaseRequestBuilder<RecoverRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RecoverRequestBuilder clone() {
        return RecoverRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RecoverRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    RecoverRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/vault/recover", pathParameters) ;
    /// Instantiates a new [RecoverRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    RecoverRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/vault/recover", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Recover access to a vault for a given account.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<void> postAsync(VaultRecovery body, [Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Recover access to a vault for a given account.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPostRequestInformation(VaultRecovery body, [Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
