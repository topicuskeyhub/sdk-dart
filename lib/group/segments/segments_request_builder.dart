// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/group/group_segmented_linkable_wrapper.dart';

/// auto generated
/// Builds and executes requests for operations under \group\segments
class SegmentsRequestBuilder extends BaseRequestBuilder<SegmentsRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    SegmentsRequestBuilder clone() {
        return SegmentsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [SegmentsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    SegmentsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/segments", pathParameters) ;
    /// Instantiates a new [SegmentsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    SegmentsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/segments", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the segments and counts of the groups. Groups will not be returned, but the counts will be filtered with the specified query parameters.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GroupSegmentedLinkableWrapper?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupSegmentedLinkableWrapper>(requestInfo, GroupSegmentedLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the segments and counts of the groups. Groups will not be returned, but the counts will be filtered with the specified query parameters.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=81');
        return requestInfo;
    }
}
