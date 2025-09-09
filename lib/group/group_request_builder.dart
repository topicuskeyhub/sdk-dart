// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/group/group_linkable_wrapper.dart';
import './account/account_request_builder.dart';
import './auditstats/auditstats_request_builder.dart';
import './export_/export_request_builder.dart';
import './group_request_builder_get_query_parameters.dart';
import './group_request_builder_post_query_parameters.dart';
import './item/with_group_item_request_builder.dart';
import './segments/segments_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \group
class GroupRequestBuilder extends BaseRequestBuilder<GroupRequestBuilder> {
    ///  The account property
    AccountRequestBuilder get account {
        return AccountRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The auditstats property
    AuditstatsRequestBuilder get auditstats {
        return AuditstatsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The export property
    ExportRequestBuilder get export_ {
        return ExportRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The segments property
    SegmentsRequestBuilder get segments {
        return SegmentsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the ApiSdk.group.item collection
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
    GroupRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group{?accessModifiedSince*,accessProfileAdministration*,accessQuicksearch*,additional*,any*,applicationAdministration*,auditDue*,auditOverDue*,auditRequested*,auditedSince*,auditingStatus*,auditsReviewedBy*,authorizedBy*,classification*,containsAccount*,containsAllAccounts*,containsClient*,createdAfter*,createdBefore*,delegationGivenTo*,doesNotContainAccount*,doesNotContainClient*,exclude*,groupAuditConfig*,hasAnyAuthorizingGroupSet*,hasAuditUnderReview*,hasAuditing*,hasClientPermissions*,hasClients*,hasMoreThanOneManager*,hasSystems*,hasVault*,hasWebhooks*,id*,isManager*,keyHubAdmin*,meetsClassificationCriteria*,membershipAuthorizedBy*,modifiedSince*,myGroups*,name*,nameContains*,nameDoesNotStartWith*,nameOrDescriptionContains*,nameStartsWith*,nestedGroup*,nestedUnder*,notNestedUnder*,notPartOfAccessProfile*,numberOfAccountsGreaterOrEqual*,organizationalUnit*,ownsClients*,ownsDirectories*,ownsGroupOnSystems*,ownsSystems*,partOfAccessProfile*,privateGroup*,provisioningAuthorizedBy*,q*,rotatingPasswordRequired*,singleManaged*,sort*,uuid*,vault*,vaultRecovery*,vaultRequiresActivation*,visibility*}", pathParameters) ;
    /// Instantiates a new [GroupRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GroupRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group{?accessModifiedSince*,accessProfileAdministration*,accessQuicksearch*,additional*,any*,applicationAdministration*,auditDue*,auditOverDue*,auditRequested*,auditedSince*,auditingStatus*,auditsReviewedBy*,authorizedBy*,classification*,containsAccount*,containsAllAccounts*,containsClient*,createdAfter*,createdBefore*,delegationGivenTo*,doesNotContainAccount*,doesNotContainClient*,exclude*,groupAuditConfig*,hasAnyAuthorizingGroupSet*,hasAuditUnderReview*,hasAuditing*,hasClientPermissions*,hasClients*,hasMoreThanOneManager*,hasSystems*,hasVault*,hasWebhooks*,id*,isManager*,keyHubAdmin*,meetsClassificationCriteria*,membershipAuthorizedBy*,modifiedSince*,myGroups*,name*,nameContains*,nameDoesNotStartWith*,nameOrDescriptionContains*,nameStartsWith*,nestedGroup*,nestedUnder*,notNestedUnder*,notPartOfAccessProfile*,numberOfAccountsGreaterOrEqual*,organizationalUnit*,ownsClients*,ownsDirectories*,ownsGroupOnSystems*,ownsSystems*,partOfAccessProfile*,privateGroup*,provisioningAuthorizedBy*,q*,rotatingPasswordRequired*,singleManaged*,sort*,uuid*,vault*,vaultRecovery*,vaultRequiresActivation*,visibility*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all groups in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GroupLinkableWrapper?> getAsync([void Function(RequestConfiguration<GroupRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupLinkableWrapper>(requestInfo, GroupLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new groups and returns the newly created groups. It is required to specify the first admin via the admins additional object.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GroupLinkableWrapper?> postAsync(GroupLinkableWrapper body, [void Function(RequestConfiguration<GroupRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupLinkableWrapper>(requestInfo, GroupLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all groups in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<GroupRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<GroupRequestBuilderGetQueryParameters>(requestConfiguration, () => GroupRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=80');
        return requestInfo;
    }
    /// Creates one or more new groups and returns the newly created groups. It is required to specify the first admin via the admins additional object.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(GroupLinkableWrapper body, [void Function(RequestConfiguration<GroupRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<GroupRequestBuilderPostQueryParameters>(requestConfiguration, () => GroupRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=80');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=80', body);
        return requestInfo;
    }
}
