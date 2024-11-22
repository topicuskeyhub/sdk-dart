// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './export_/export_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \group\account
class AccountRequestBuilder extends BaseRequestBuilder<AccountRequestBuilder> {
    ///  The export property
    ExportRequestBuilder get export_ {
        return ExportRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    AccountRequestBuilder clone() {
        return AccountRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AccountRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AccountRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/account", pathParameters) ;
    /// Instantiates a new [AccountRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AccountRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/account", {RequestInformation.rawUrlKey : rawUrl}) ;
}
