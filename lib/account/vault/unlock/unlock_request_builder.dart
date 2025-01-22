// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/vault/vault_unlock.dart';
import '../../../models/vault/vault_unlock_response.dart';

/// auto generated
/// Builds and executes requests for operations under \account\vault\unlock
class UnlockRequestBuilder extends BaseRequestBuilder<UnlockRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    UnlockRequestBuilder clone() {
        return UnlockRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [UnlockRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    UnlockRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/vault/unlock", pathParameters) ;
    /// Instantiates a new [UnlockRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    UnlockRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/vault/unlock", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Unlocks the vault of the authenticated user. Use the session password in the response via the topicus-Vault-session header to access secrets. The prefered way to unlock a vault is via the authentication by passing 'authVault="access"' to the OAuth2 authorization endpoint.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<VaultUnlockResponse?> postAsync(VaultUnlock body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<VaultUnlockResponse>(requestInfo, VaultUnlockResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Unlocks the vault of the authenticated user. Use the session password in the response via the topicus-Vault-session header to access secrets. The prefered way to unlock a vault is via the authentication by passing 'authVault="access"' to the OAuth2 authorization endpoint.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(VaultUnlock body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=76');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=76', body);
        return requestInfo;
    }
}
