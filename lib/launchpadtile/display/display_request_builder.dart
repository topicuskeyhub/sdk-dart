// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/launchpad/displayed_launchpad_tiles.dart';
import './display_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \launchpadtile\display
class DisplayRequestBuilder extends BaseRequestBuilder<DisplayRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    DisplayRequestBuilder clone() {
        return DisplayRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [DisplayRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DisplayRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/launchpadtile/display{?filter*,group*,modifiedSince*}", pathParameters) ;
    /// Instantiates a new [DisplayRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DisplayRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/launchpadtile/display{?filter*,group*,modifiedSince*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query tiles for display on the launchpad. This returns a normalized view over the tiles, per group. A single tile can be returned multiple times if access is given via multiple groups.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<DisplayedLaunchpadTiles?> getAsync([void Function(RequestConfiguration<DisplayRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<DisplayedLaunchpadTiles>(requestInfo, DisplayedLaunchpadTiles.createFromDiscriminatorValue, errorMapping);
    }
    /// Query tiles for display on the launchpad. This returns a normalized view over the tiles, per group. A single tile can be returned multiple times if access is given via multiple groups.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DisplayRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DisplayRequestBuilderGetQueryParameters>(requestConfiguration, () => DisplayRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
}
