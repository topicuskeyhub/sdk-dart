// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error_report.dart';
import './export_request_builder_post_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \group\account\export
class ExportRequestBuilder extends BaseRequestBuilder<ExportRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ExportRequestBuilder clone() {
        return ExportRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ExportRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ExportRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/account/export{?accessModifiedSince*,accessProfileAdministration*,accessQuicksearch*,any*,applicationAdministration*,auditDue*,auditOverDue*,auditRequested*,auditedSince*,auditingStatus*,auditsReviewedBy*,authorizedBy*,classification*,containsAccount*,containsAllAccounts*,containsClient*,createdAfter*,createdBefore*,delegationGivenTo*,doesNotContainAccount*,doesNotContainClient*,exclude*,groupAuditConfig*,hasAnyAuthorizingGroupSet*,hasAuditUnderReview*,hasAuditing*,hasClientPermissions*,hasClients*,hasMoreThanOneManager*,hasSystems*,hasVault*,hasWebhooks*,id*,isManager*,keyHubAdmin*,meetsClassificationCriteria*,membershipAuthorizedBy*,modifiedSince*,myGroups*,name*,nameContains*,nameDoesNotStartWith*,nameOrDescriptionContains*,nameStartsWith*,nestedGroup*,nestedUnder*,notNestedUnder*,notPartOfAccessProfile*,numberOfAccountsGreaterOrEqual*,organizationalUnit*,ownsClients*,ownsDirectories*,ownsGroupOnSystems*,ownsSystems*,partOfAccessProfile*,privateGroup*,provisioningAuthorizedBy*,q*,rotatingPasswordRequired*,singleManaged*,sort*,uuid*,vault*,vaultRecovery*,vaultRequiresActivation*,visibility*}", pathParameters) ;
    /// Instantiates a new [ExportRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ExportRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/account/export{?accessModifiedSince*,accessProfileAdministration*,accessQuicksearch*,any*,applicationAdministration*,auditDue*,auditOverDue*,auditRequested*,auditedSince*,auditingStatus*,auditsReviewedBy*,authorizedBy*,classification*,containsAccount*,containsAllAccounts*,containsClient*,createdAfter*,createdBefore*,delegationGivenTo*,doesNotContainAccount*,doesNotContainClient*,exclude*,groupAuditConfig*,hasAnyAuthorizingGroupSet*,hasAuditUnderReview*,hasAuditing*,hasClientPermissions*,hasClients*,hasMoreThanOneManager*,hasSystems*,hasVault*,hasWebhooks*,id*,isManager*,keyHubAdmin*,meetsClassificationCriteria*,membershipAuthorizedBy*,modifiedSince*,myGroups*,name*,nameContains*,nameDoesNotStartWith*,nameOrDescriptionContains*,nameStartsWith*,nestedGroup*,nestedUnder*,notNestedUnder*,notPartOfAccessProfile*,numberOfAccountsGreaterOrEqual*,organizationalUnit*,ownsClients*,ownsDirectories*,ownsGroupOnSystems*,ownsSystems*,partOfAccessProfile*,privateGroup*,provisioningAuthorizedBy*,q*,rotatingPasswordRequired*,singleManaged*,sort*,uuid*,vault*,vaultRecovery*,vaultRequiresActivation*,visibility*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Prepares an export of groupaccounts using the filtering on groups specified in the query parameters. The URI of the export can be found in the returned Location header. This URI is valid for 2 minutes after being generated.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> postAsync([void Function(RequestConfiguration<ExportRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Prepares an export of groupaccounts using the filtering on groups specified in the query parameters. The URI of the export can be found in the returned Location header. This URI is valid for 2 minutes after being generated.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<ExportRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ExportRequestBuilderPostQueryParameters>(requestConfiguration, () => ExportRequestBuilderPostQueryParameters());
        return requestInfo;
    }
}
