// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/profile/access_profile_client.dart';
import './with_accessprofileclient_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \accessprofileclient\{accessprofileclientid}
class WithAccessprofileclientItemRequestBuilder extends BaseRequestBuilder<WithAccessprofileclientItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithAccessprofileclientItemRequestBuilder clone() {
        return WithAccessprofileclientItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithAccessprofileclientItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithAccessprofileclientItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/accessprofileclient/{accessprofileclientid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithAccessprofileclientItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithAccessprofileclientItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/accessprofileclient/{accessprofileclientid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Removes the specified client link, effectively removing access to the client for members of the access profile.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the single client link for the access profile.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccessProfileClient?> getAsync([void Function(RequestConfiguration<WithAccessprofileclientItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileClient>(requestInfo, AccessProfileClient.createFromDiscriminatorValue, errorMapping);
    }
    /// Removes the specified client link, effectively removing access to the client for members of the access profile.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
    /// Returns the single client link for the access profile.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithAccessprofileclientItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithAccessprofileclientItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithAccessprofileclientItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
}
