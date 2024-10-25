import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/group/group_segmented_linkable_wrapper.dart';

/// Builds and executes requests for operations under \group\segments
class SegmentsRequestBuilder extends BaseRequestBuilder<SegmentsRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     SegmentsRequestBuilder clone() {
        return SegmentsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [SegmentsRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     SegmentsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/segments", pathParameters) ;
    /// Instantiates a new [SegmentsRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     SegmentsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/segments", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the segments and counts of the groups. Groups will not be returned, but the counts will be filtered with the specified query parameters.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<GroupSegmentedLinkableWrapper?> getAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupSegmentedLinkableWrapper>(requestInfo, GroupSegmentedLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the segments and counts of the groups. Groups will not be returned, but the counts will be filtered with the specified query parameters.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}
