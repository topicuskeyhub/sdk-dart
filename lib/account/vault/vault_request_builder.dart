import 'package:kiota_abstractions/kiota_abstractions.dart';
import './unlock/unlock_request_builder.dart';

/// Builds and executes requests for operations under \account\vault
class VaultRequestBuilder extends BaseRequestBuilder<VaultRequestBuilder> {
    ///  The unlock property
    UnlockRequestBuilder get unlock {
        return UnlockRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
     VaultRequestBuilder clone() {
        return VaultRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [VaultRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     VaultRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/vault", pathParameters) ;
    /// Instantiates a new [VaultRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     VaultRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/vault", {RequestInformation.rawUrlKey : rawUrl}) ;
}
