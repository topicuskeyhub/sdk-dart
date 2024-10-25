import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/launchpad/displayed_launchpad_tiles.dart';
import './display_request_builder_get_query_parameters.dart';

/// Builds and executes requests for operations under \launchpadtile\display
class DisplayRequestBuilder extends BaseRequestBuilder<DisplayRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     DisplayRequestBuilder clone() {
        return DisplayRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [DisplayRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     DisplayRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/launchpadtile/display{?filter*,group*,modifiedSince*}", pathParameters) ;
    /// Instantiates a new [DisplayRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     DisplayRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/launchpadtile/display{?filter*,group*,modifiedSince*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query tiles for display on the launchpad. This returns a normalized view over the tiles, per group. A single tile can be returned multiple times if access is given via multiple groups.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<DisplayedLaunchpadTiles?> getAsync([Function(RequestConfiguration<DisplayRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<DisplayedLaunchpadTiles>(requestInfo, DisplayedLaunchpadTiles.createFromDiscriminatorValue, errorMapping);
    }
    /// Query tiles for display on the launchpad. This returns a normalized view over the tiles, per group. A single tile can be returned multiple times if access is given via multiple groups.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<DisplayRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DisplayRequestBuilderGetQueryParameters>(requestConfiguration, () => DisplayRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}
