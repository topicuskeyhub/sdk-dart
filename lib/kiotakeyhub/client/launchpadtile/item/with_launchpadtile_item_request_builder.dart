import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/launchpad/launchpad_tile.dart';
import './with_launchpadtile_item_request_builder_get_query_parameters.dart';
import './with_launchpadtile_item_request_builder_put_query_parameters.dart';

/// Builds and executes requests for operations under \launchpadtile\{launchpadtileid}
class WithLaunchpadtileItemRequestBuilder extends BaseRequestBuilder<WithLaunchpadtileItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     WithLaunchpadtileItemRequestBuilder clone() {
        return WithLaunchpadtileItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithLaunchpadtileItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithLaunchpadtileItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/launchpadtile/{launchpadtileid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithLaunchpadtileItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithLaunchpadtileItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/launchpadtile/{launchpadtileid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Removes the specified launchpad tile.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<void> deleteAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the single launchpad tile.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<LaunchpadTile?> getAsync([Function(RequestConfiguration<WithLaunchpadtileItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LaunchpadTile>(requestInfo, LaunchpadTile.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the launchpad tile identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<LaunchpadTile?> putAsync(LaunchpadTile body, [Function(RequestConfiguration<WithLaunchpadtileItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LaunchpadTile>(requestInfo, LaunchpadTile.createFromDiscriminatorValue, errorMapping);
    }
    /// Removes the specified launchpad tile.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toDeleteRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Returns the single launchpad tile.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithLaunchpadtileItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithLaunchpadtileItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithLaunchpadtileItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Updates the launchpad tile identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPutRequestInformation(LaunchpadTile body, [Function(RequestConfiguration<WithLaunchpadtileItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithLaunchpadtileItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithLaunchpadtileItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=73', body);
        return requestInfo;
    }
}
