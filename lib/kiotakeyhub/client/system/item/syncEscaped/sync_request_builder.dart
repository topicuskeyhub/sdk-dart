import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/error_report.dart';

/// Builds and executes requests for operations under \system\{systemid}\sync
class SyncRequestBuilder extends BaseRequestBuilder<SyncRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     SyncRequestBuilder clone() {
        return SyncRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [SyncRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     SyncRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/sync", pathParameters) ;
    /// Instantiates a new [SyncRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     SyncRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/sync", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Perform a full synchronization of the provisioned system specified by the given id. The synchronization runs in the background.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<void> postAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Perform a full synchronization of the provisioned system specified by the given id. The synchronization runs in the background.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPostRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}
