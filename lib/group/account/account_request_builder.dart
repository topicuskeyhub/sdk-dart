import 'package:kiota_abstractions/kiota_abstractions.dart';
import './exportEscaped/export_request_builder.dart';

/// Builds and executes requests for operations under \group\account
class AccountRequestBuilder extends BaseRequestBuilder<AccountRequestBuilder> {
    ///  The export property
    ExportRequestBuilder get exportEscaped {
        return ExportRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
     AccountRequestBuilder clone() {
        return AccountRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AccountRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     AccountRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/account", pathParameters) ;
    /// Instantiates a new [AccountRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     AccountRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/account", {RequestInformation.rawUrlKey : rawUrl}) ;
}
