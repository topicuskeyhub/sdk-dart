// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/group/group_client_linkable_wrapper.dart';
import './groupclient_request_builder_get_query_parameters.dart';
import './item/with_groupclient_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \groupclient
class GroupclientRequestBuilder extends BaseRequestBuilder<GroupclientRequestBuilder> {
    /// Gets an item from the ApiSdk.groupclient.item collection
    ///  [groupclientid] Unique identifier of the item
    WithGroupclientItemRequestBuilder byGroupclientid(int groupclientid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('groupclientid', () => groupclientid);
        return WithGroupclientItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    GroupclientRequestBuilder clone() {
        return GroupclientRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [GroupclientRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GroupclientRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/groupclient{?activationRequired*,additional*,any*,appAdminGroup*,appOwnerGroup*,client*,createdAfter*,createdBefore*,exclude*,group*,id*,modifiedSince*,organizationalUnitForEnforcement*,q*,sort*}", pathParameters) ;
    /// Instantiates a new [GroupclientRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GroupclientRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/groupclient{?activationRequired*,additional*,any*,appAdminGroup*,appOwnerGroup*,client*,createdAfter*,createdBefore*,exclude*,group*,id*,modifiedSince*,organizationalUnitForEnforcement*,q*,sort*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Queries over all client links for a group. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GroupClientLinkableWrapper?> getAsync([void Function(RequestConfiguration<GroupclientRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupClientLinkableWrapper>(requestInfo, GroupClientLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Queries over all client links for a group. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<GroupclientRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<GroupclientRequestBuilderGetQueryParameters>(requestConfiguration, () => GroupclientRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=82');
        return requestInfo;
    }
}
