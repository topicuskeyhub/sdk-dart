// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './export_/export_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \serviceaccount\group
class GroupRequestBuilder extends BaseRequestBuilder<GroupRequestBuilder> {
    ///  The export property
    ExportRequestBuilder get export_ {
        return ExportRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    GroupRequestBuilder clone() {
        return GroupRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [GroupRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GroupRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/serviceaccount/group", pathParameters) ;
    /// Instantiates a new [GroupRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GroupRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/serviceaccount/group", {RequestInformation.rawUrlKey : rawUrl}) ;
}
