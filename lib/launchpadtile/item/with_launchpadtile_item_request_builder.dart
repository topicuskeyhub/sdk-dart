// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/launchpad/launchpad_tile.dart';
import './with_launchpadtile_item_request_builder_get_query_parameters.dart';
import './with_launchpadtile_item_request_builder_put_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \launchpadtile\{launchpadtileid}
class WithLaunchpadtileItemRequestBuilder extends BaseRequestBuilder<WithLaunchpadtileItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithLaunchpadtileItemRequestBuilder clone() {
        return WithLaunchpadtileItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithLaunchpadtileItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithLaunchpadtileItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/launchpadtile/{launchpadtileid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithLaunchpadtileItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithLaunchpadtileItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/launchpadtile/{launchpadtileid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Removes the specified launchpad tile.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the single launchpad tile.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<LaunchpadTile?> getAsync([void Function(RequestConfiguration<WithLaunchpadtileItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LaunchpadTile>(requestInfo, LaunchpadTile.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the launchpad tile identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<LaunchpadTile?> putAsync(LaunchpadTile body, [void Function(RequestConfiguration<WithLaunchpadtileItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LaunchpadTile>(requestInfo, LaunchpadTile.createFromDiscriminatorValue, errorMapping);
    }
    /// Removes the specified launchpad tile.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=79');
        return requestInfo;
    }
    /// Returns the single launchpad tile.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithLaunchpadtileItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithLaunchpadtileItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithLaunchpadtileItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=79');
        return requestInfo;
    }
    /// Updates the launchpad tile identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPutRequestInformation(LaunchpadTile body, [void Function(RequestConfiguration<WithLaunchpadtileItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithLaunchpadtileItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithLaunchpadtileItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=79');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=79', body);
        return requestInfo;
    }
}
