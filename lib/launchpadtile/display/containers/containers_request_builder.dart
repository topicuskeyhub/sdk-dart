// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/non_linkable_wrapper.dart';
import './containers_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \launchpadtile\display\containers
class ContainersRequestBuilder extends BaseRequestBuilder<ContainersRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ContainersRequestBuilder clone() {
        return ContainersRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ContainersRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ContainersRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/launchpadtile/display/containers{?filter*}", pathParameters) ;
    /// Instantiates a new [ContainersRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ContainersRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/launchpadtile/display/containers{?filter*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the distinct groups and access profiles that have tiles to display on the launchpad for the current account. Used to populate the launchpad filter.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<NonLinkableWrapper?> getAsync([void Function(RequestConfiguration<ContainersRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<NonLinkableWrapper>(requestInfo, NonLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the distinct groups and access profiles that have tiles to display on the launchpad for the current account. Used to populate the launchpad filter.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<ContainersRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ContainersRequestBuilderGetQueryParameters>(requestConfiguration, () => ContainersRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=86');
        return requestInfo;
    }
}
