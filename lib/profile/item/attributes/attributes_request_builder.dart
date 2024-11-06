import 'package:kiota_abstractions/kiota_abstractions.dart';
import './syncEscaped/sync_request_builder.dart';

/// Builds and executes requests for operations under \profile\{accessprofile-id}\attributes
class AttributesRequestBuilder extends BaseRequestBuilder<AttributesRequestBuilder> {
    ///  The sync property
    SyncRequestBuilder get syncEscaped {
        return SyncRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    AttributesRequestBuilder clone() {
        return AttributesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AttributesRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    AttributesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/attributes", pathParameters) ;
    /// Instantiates a new [AttributesRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    AttributesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/attributes", {RequestInformation.rawUrlKey : rawUrl}) ;
}
