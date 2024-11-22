// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './bulk/bulk_request_builder.dart';

/// auto generated
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
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    StatusRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/status", pathParameters) ;
    /// Instantiates a new [StatusRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    StatusRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/status", {RequestInformation.rawUrlKey : rawUrl}) ;
}
