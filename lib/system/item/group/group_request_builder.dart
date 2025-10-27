// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/provisioning/group_on_system_linkable_wrapper.dart';
import './group_request_builder_get_query_parameters.dart';
import './group_request_builder_post_query_parameters.dart';
import './item/with_group_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \system\{systemid}\group
class GroupRequestBuilder extends BaseRequestBuilder<GroupRequestBuilder> {
    /// Gets an item from the ApiSdk.system.item.group.item collection
    ///  [groupid] Unique identifier of the item
    WithGroupItemRequestBuilder byGroupid(int groupid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('groupid', () => groupid);
        return WithGroupItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    GroupRequestBuilder clone() {
        return GroupRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [GroupRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GroupRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/group{?accessProfile*,additional*,adminnedBy*,any*,contentAdminnedBy*,createdAfter*,createdBefore*,exclude*,group*,id*,modifiedSince*,nameContains*,nameInSystem*,notLinkedToGroup*,notLinkedToServiceAccount*,organizationalUnit*,organizationalUnitForEnforcement*,ownedBy*,q*,sort*,system*,systemForEnforcement*,systemOwnedBy*,tier2OwnedBy*,type*}", pathParameters) ;
    /// Instantiates a new [GroupRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GroupRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/group{?accessProfile*,additional*,adminnedBy*,any*,contentAdminnedBy*,createdAfter*,createdBefore*,exclude*,group*,id*,modifiedSince*,nameContains*,nameInSystem*,notLinkedToGroup*,notLinkedToServiceAccount*,organizationalUnit*,organizationalUnitForEnforcement*,ownedBy*,q*,sort*,system*,systemForEnforcement*,systemOwnedBy*,tier2OwnedBy*,type*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all groups on systems within a provisioned system in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GroupOnSystemLinkableWrapper?> getAsync([void Function(RequestConfiguration<GroupRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupOnSystemLinkableWrapper>(requestInfo, GroupOnSystemLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new groups on systems and returns the newly created groups on systems. The groups will also be provisioned to the targeted provisioned system. By default, for every group on system, a provisioning group will be created granting the owner access to the newly created group. It is also possible to specify the provisioning groups to be created via the 'provgroups' addionalObjects property.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GroupOnSystemLinkableWrapper?> postAsync(GroupOnSystemLinkableWrapper body, [void Function(RequestConfiguration<GroupRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupOnSystemLinkableWrapper>(requestInfo, GroupOnSystemLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all groups on systems within a provisioned system in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<GroupRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<GroupRequestBuilderGetQueryParameters>(requestConfiguration, () => GroupRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=81');
        return requestInfo;
    }
    /// Creates one or more new groups on systems and returns the newly created groups on systems. The groups will also be provisioned to the targeted provisioned system. By default, for every group on system, a provisioning group will be created granting the owner access to the newly created group. It is also possible to specify the provisioning groups to be created via the 'provgroups' addionalObjects property.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(GroupOnSystemLinkableWrapper body, [void Function(RequestConfiguration<GroupRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<GroupRequestBuilderPostQueryParameters>(requestConfiguration, () => GroupRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=81');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=81', body);
        return requestInfo;
    }
}
