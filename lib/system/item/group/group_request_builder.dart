import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/provisioning/group_on_system_linkable_wrapper.dart';
import './group_request_builder_get_query_parameters.dart';
import './group_request_builder_post_query_parameters.dart';
import './item/with_group_item_request_builder.dart';

/// Builds and executes requests for operations under \system\{systemid}\group
class GroupRequestBuilder extends BaseRequestBuilder<GroupRequestBuilder> {
    /// Gets an item from the ApiSdk.system.item.group.item collection
    /// <param name="groupid">groupid</param>
    WithGroupItemRequestBuilder byGroupid(int groupid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("groupid", ()=> groupid);
        return WithGroupItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    GroupRequestBuilder clone() {
        return GroupRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [GroupRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    GroupRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/group{?additional*,adminnedBy*,any*,contentAdminnedBy*,createdAfter*,createdBefore*,exclude*,group*,id*,modifiedSince*,nameContains*,nameInSystem*,notLinkedToGroup*,notLinkedToServiceAccount*,organizationalUnit*,organizationalUnitForEnforcement*,ownedBy*,q*,sort*,system*,systemForEnforcement*,systemOwnedBy*,tier2OwnedBy*,type*}", pathParameters) ;
    /// Instantiates a new [GroupRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    GroupRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/group{?additional*,adminnedBy*,any*,contentAdminnedBy*,createdAfter*,createdBefore*,exclude*,group*,id*,modifiedSince*,nameContains*,nameInSystem*,notLinkedToGroup*,notLinkedToServiceAccount*,organizationalUnit*,organizationalUnitForEnforcement*,ownedBy*,q*,sort*,system*,systemForEnforcement*,systemOwnedBy*,tier2OwnedBy*,type*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all groups on systems within a provisioned system in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<GroupOnSystemLinkableWrapper?> getAsync([Function(RequestConfiguration<GroupRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupOnSystemLinkableWrapper>(requestInfo, GroupOnSystemLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new groups on systems and returns the newly created groups on systems. The groups will also be provisioned to the targeted provisioned system. By default, for every group on system, a provisioning group will be created granting the owner access to the newly created group. It is also possible to specify the provisioning groups to be created via the 'provgroups' addionalObjects property.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<GroupOnSystemLinkableWrapper?> postAsync(GroupOnSystemLinkableWrapper body, [Function(RequestConfiguration<GroupRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupOnSystemLinkableWrapper>(requestInfo, GroupOnSystemLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all groups on systems within a provisioned system in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<GroupRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<GroupRequestBuilderGetQueryParameters>(requestConfiguration, () => GroupRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Creates one or more new groups on systems and returns the newly created groups on systems. The groups will also be provisioned to the targeted provisioned system. By default, for every group on system, a provisioning group will be created granting the owner access to the newly created group. It is also possible to specify the provisioning groups to be created via the 'provgroups' addionalObjects property.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPostRequestInformation(GroupOnSystemLinkableWrapper body, [Function(RequestConfiguration<GroupRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<GroupRequestBuilderPostQueryParameters>(requestConfiguration, () => GroupRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
