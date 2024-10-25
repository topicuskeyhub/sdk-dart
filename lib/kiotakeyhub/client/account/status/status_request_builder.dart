import 'package:kiota_abstractions/kiota_abstractions.dart';
import './bulk/bulk_request_builder.dart';

/// Builds and executes requests for operations under \account\status
class StatusRequestBuilder extends BaseRequestBuilder<StatusRequestBuilder> {
    ///  The bulk property
    BulkRequestBuilder get bulk {
        return BulkRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
     StatusRequestBuilder clone() {
        return StatusRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [StatusRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     StatusRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/status", pathParameters) ;
    /// Instantiates a new [StatusRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     StatusRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/status", {RequestInformation.rawUrlKey : rawUrl}) ;
}
