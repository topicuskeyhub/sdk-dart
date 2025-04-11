// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/provisioning/provisioned_system_sync_log_linkable_wrapper.dart';
import './item/with_synclog_item_request_builder.dart';
import './synclog_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \system\{systemid}\synclog
class SynclogRequestBuilder extends BaseRequestBuilder<SynclogRequestBuilder> {
    /// Gets an item from the ApiSdk.system.item.synclog.item collection
    ///  [synclogid] Unique identifier of the item
    WithSynclogItemRequestBuilder bySynclogid(int synclogid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('synclogid', () => synclogid);
        return WithSynclogItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    SynclogRequestBuilder clone() {
        return SynclogRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [SynclogRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    SynclogRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/synclog{?additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,q*,sort*,system*}", pathParameters) ;
    /// Instantiates a new [SynclogRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    SynclogRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/synclog{?additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,q*,sort*,system*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for sync logs for a provisioned system. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ProvisionedSystemSyncLogLinkableWrapper?> getAsync([void Function(RequestConfiguration<SynclogRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionedSystemSyncLogLinkableWrapper>(requestInfo, ProvisionedSystemSyncLogLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for sync logs for a provisioned system. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<SynclogRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<SynclogRequestBuilderGetQueryParameters>(requestConfiguration, () => SynclogRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
}
