// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sync_/sync_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \profile\{accessprofile-id}\attributes
class AttributesRequestBuilder extends BaseRequestBuilder<AttributesRequestBuilder> {
    ///  The sync property
    SyncRequestBuilder get sync_ {
        return SyncRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    AttributesRequestBuilder clone() {
        return AttributesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AttributesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AttributesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/attributes", pathParameters) ;
    /// Instantiates a new [AttributesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AttributesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/attributes", {RequestInformation.rawUrlKey : rawUrl}) ;
}
