// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import '../../../../models/provisioning/provisioned_system_sync_log.dart';
import './with_synclog_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \system\{systemid}\synclog\{synclogid}
class WithSynclogItemRequestBuilder extends BaseRequestBuilder<WithSynclogItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithSynclogItemRequestBuilder clone() {
        return WithSynclogItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithSynclogItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithSynclogItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/synclog/{synclogid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithSynclogItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithSynclogItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/synclog/{synclogid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the sync log for a provisioned system.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ProvisionedSystemSyncLog?> getAsync([void Function(RequestConfiguration<WithSynclogItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionedSystemSyncLog>(requestInfo, ProvisionedSystemSyncLog.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the sync log for a provisioned system.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithSynclogItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithSynclogItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithSynclogItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=76');
        return requestInfo;
    }
}
