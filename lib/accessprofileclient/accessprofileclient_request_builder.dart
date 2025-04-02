// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/profile/access_profile_client_linkable_wrapper.dart';
import './accessprofileclient_request_builder_get_query_parameters.dart';
import './item/with_accessprofileclient_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \accessprofileclient
class AccessprofileclientRequestBuilder extends BaseRequestBuilder<AccessprofileclientRequestBuilder> {
    /// Gets an item from the ApiSdk.accessprofileclient.item collection
    ///  [accessprofileclientid] Unique identifier of the item
    WithAccessprofileclientItemRequestBuilder byAccessprofileclientid(int accessprofileclientid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('accessprofileclientid', () => accessprofileclientid);
        return WithAccessprofileclientItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    AccessprofileclientRequestBuilder clone() {
        return AccessprofileclientRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AccessprofileclientRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AccessprofileclientRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/accessprofileclient{?accessProfile*,additional*,any*,client*,clientOwnerGroup*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,ownedBy*,q*,sort*}", pathParameters) ;
    /// Instantiates a new [AccessprofileclientRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AccessprofileclientRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/accessprofileclient{?accessProfile*,additional*,any*,client*,clientOwnerGroup*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,ownedBy*,q*,sort*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Queries over all client links for an access profile. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccessProfileClientLinkableWrapper?> getAsync([void Function(RequestConfiguration<AccessprofileclientRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileClientLinkableWrapper>(requestInfo, AccessProfileClientLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Queries over all client links for an access profile. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<AccessprofileclientRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AccessprofileclientRequestBuilderGetQueryParameters>(requestConfiguration, () => AccessprofileclientRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=77');
        return requestInfo;
    }
}
