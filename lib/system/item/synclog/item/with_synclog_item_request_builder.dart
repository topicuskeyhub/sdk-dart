import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import '../../../../models/provisioning/provisioned_system_sync_log.dart';
import './with_synclog_item_request_builder_get_query_parameters.dart';

/// Builds and executes requests for operations under \system\{systemid}\synclog\{synclogid}
class WithSynclogItemRequestBuilder extends BaseRequestBuilder<WithSynclogItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithSynclogItemRequestBuilder clone() {
        return WithSynclogItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithSynclogItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithSynclogItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/synclog/{synclogid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithSynclogItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithSynclogItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/synclog/{synclogid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the sync log for a provisioned system.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<ProvisionedSystemSyncLog?> getAsync([Function(RequestConfiguration<WithSynclogItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionedSystemSyncLog>(requestInfo, ProvisionedSystemSyncLog.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the sync log for a provisioned system.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithSynclogItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithSynclogItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithSynclogItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}
