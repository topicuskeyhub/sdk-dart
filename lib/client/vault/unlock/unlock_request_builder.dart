import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/vault/vault_unlock.dart';
import '../../../models/vault/vault_unlock_response.dart';

/// Builds and executes requests for operations under \client\vault\unlock
class UnlockRequestBuilder extends BaseRequestBuilder<UnlockRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    UnlockRequestBuilder clone() {
        return UnlockRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [UnlockRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    UnlockRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/vault/unlock", pathParameters) ;
    /// Instantiates a new [UnlockRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    UnlockRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/vault/unlock", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Unlocks the vault of the authenticated client. Use the session password in the response via the topicus-Vault-session header to access secrets. The prefered way to unlock a vault is via the authentication by passing 'authVault="access"' to the OAuth2 token endpoint.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<VaultUnlockResponse?> postAsync(VaultUnlock body, [Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<VaultUnlockResponse>(requestInfo, VaultUnlockResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Unlocks the vault of the authenticated client. Use the session password in the response via the topicus-Vault-session header to access secrets. The prefered way to unlock a vault is via the authentication by passing 'authVault="access"' to the OAuth2 token endpoint.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPostRequestInformation(VaultUnlock body, [Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
