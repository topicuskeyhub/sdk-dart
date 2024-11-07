import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/provisioning/provisioned_system_sync_log_linkable_wrapper.dart';
import './item/with_synclog_item_request_builder.dart';
import './synclog_request_builder_get_query_parameters.dart';

/// Builds and executes requests for operations under \system\{systemid}\synclog
class SynclogRequestBuilder extends BaseRequestBuilder<SynclogRequestBuilder> {
    /// Gets an item from the ApiSdk.system.item.synclog.item collection
    /// <param name="synclogid">synclogid</param>
    WithSynclogItemRequestBuilder bySynclogid(int synclogid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("synclogid", ()=> synclogid);
        return WithSynclogItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    SynclogRequestBuilder clone() {
        return SynclogRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [SynclogRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    SynclogRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/synclog{?additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,q*,sort*,system*}", pathParameters) ;
    /// Instantiates a new [SynclogRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    SynclogRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/synclog{?additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,q*,sort*,system*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for sync logs for a provisioned system. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<ProvisionedSystemSyncLogLinkableWrapper?> getAsync([Function(RequestConfiguration<SynclogRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionedSystemSyncLogLinkableWrapper>(requestInfo, ProvisionedSystemSyncLogLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for sync logs for a provisioned system. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<SynclogRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<SynclogRequestBuilderGetQueryParameters>(requestConfiguration, () => SynclogRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}
