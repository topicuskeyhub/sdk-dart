import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/group/group_client_linkable_wrapper.dart';
import './groupclient_request_builder_get_query_parameters.dart';
import './item/with_groupclient_item_request_builder.dart';

/// Builds and executes requests for operations under \groupclient
class GroupclientRequestBuilder extends BaseRequestBuilder<GroupclientRequestBuilder> {
    /// Gets an item from the ApiSdk.groupclient.item collection
    /// <param name="groupclientid">groupclientid</param>
    WithGroupclientItemRequestBuilder byGroupclientid(int groupclientid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("groupclientid", ()=> groupclientid);
        return WithGroupclientItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    GroupclientRequestBuilder clone() {
        return GroupclientRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [GroupclientRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    GroupclientRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/groupclient{?activationRequired*,additional*,any*,appAdminGroup*,appOwnerGroup*,client*,createdAfter*,createdBefore*,exclude*,group*,id*,modifiedSince*,q*,sort*}", pathParameters) ;
    /// Instantiates a new [GroupclientRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    GroupclientRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/groupclient{?activationRequired*,additional*,any*,appAdminGroup*,appOwnerGroup*,client*,createdAfter*,createdBefore*,exclude*,group*,id*,modifiedSince*,q*,sort*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Queries over all client links for a group. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<GroupClientLinkableWrapper?> getAsync([Function(RequestConfiguration<GroupclientRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupClientLinkableWrapper>(requestInfo, GroupClientLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Queries over all client links for a group. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<GroupclientRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<GroupclientRequestBuilderGetQueryParameters>(requestConfiguration, () => GroupclientRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}
