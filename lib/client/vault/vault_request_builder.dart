// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './unlock/unlock_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \client\vault
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
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    VaultRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/vault", pathParameters) ;
    /// Instantiates a new [VaultRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    VaultRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/vault", {RequestInformation.rawUrlKey : rawUrl}) ;
}
