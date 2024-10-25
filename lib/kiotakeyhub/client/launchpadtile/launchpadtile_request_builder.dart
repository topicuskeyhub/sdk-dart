import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/launchpad/launchpad_tile_linkable_wrapper.dart';
import './display/display_request_builder.dart';
import './item/with_launchpadtile_item_request_builder.dart';
import './launchpadtile_request_builder_get_query_parameters.dart';
import './launchpadtile_request_builder_post_query_parameters.dart';

/// Builds and executes requests for operations under \launchpadtile
class LaunchpadtileRequestBuilder extends BaseRequestBuilder<LaunchpadtileRequestBuilder> {
    ///  The display property
    DisplayRequestBuilder get display {
        return DisplayRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the ApiSdk.launchpadtile.item collection
    /// <param name="launchpadtileid">launchpadtileid</param>
     WithLaunchpadtileItemRequestBuilder byLaunchpadtileid(int launchpadtileid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("launchpadtileid", ()=> launchpadtileid);
        return WithLaunchpadtileItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
     LaunchpadtileRequestBuilder clone() {
        return LaunchpadtileRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [LaunchpadtileRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     LaunchpadtileRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/launchpadtile{?additional*,any*,application*,createdAfter*,createdBefore*,exclude*,group*,id*,modifiedSince*,q*,sort*,title*,vaultRecord*}", pathParameters) ;
    /// Instantiates a new [LaunchpadtileRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     LaunchpadtileRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/launchpadtile{?additional*,any*,application*,createdAfter*,createdBefore*,exclude*,group*,id*,modifiedSince*,q*,sort*,title*,vaultRecord*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Queries over all launchpad tiles. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<LaunchpadTileLinkableWrapper?> getAsync([Function(RequestConfiguration<LaunchpadtileRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LaunchpadTileLinkableWrapper>(requestInfo, LaunchpadTileLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new launchpad tiles and returns the newly created tiles.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<LaunchpadTileLinkableWrapper?> postAsync(LaunchpadTileLinkableWrapper body, [Function(RequestConfiguration<LaunchpadtileRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LaunchpadTileLinkableWrapper>(requestInfo, LaunchpadTileLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Queries over all launchpad tiles. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<LaunchpadtileRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<LaunchpadtileRequestBuilderGetQueryParameters>(requestConfiguration, () => LaunchpadtileRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Creates one or more new launchpad tiles and returns the newly created tiles.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPostRequestInformation(LaunchpadTileLinkableWrapper body, [Function(RequestConfiguration<LaunchpadtileRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<LaunchpadtileRequestBuilderPostQueryParameters>(requestConfiguration, () => LaunchpadtileRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=73', body);
        return requestInfo;
    }
}
