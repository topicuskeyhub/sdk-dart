import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import './sync_request_builder_post_query_parameters.dart';

/// Builds and executes requests for operations under \profile\{accessprofile-id}\attributes\sync
class SyncRequestBuilder extends BaseRequestBuilder<SyncRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    SyncRequestBuilder clone() {
        return SyncRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [SyncRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    SyncRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/attributes/sync{?account*,write*}", pathParameters) ;
    /// Instantiates a new [SyncRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    SyncRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/attributes/sync{?account*,write*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<Iterable<int>?> postAsync([Function(RequestConfiguration<SyncRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendPrimitiveCollection<int>(requestInfo, errorMapping);
    }
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPostRequestInformation([Function(RequestConfiguration<SyncRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<SyncRequestBuilderPostQueryParameters>(requestConfiguration, () => SyncRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74, application/vnd.topicus.keyhub+xml;version=74');
        return requestInfo;
    }
}
