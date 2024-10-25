import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/provisioning/provisioned_system_linkable_wrapper.dart';
import './item/with_system_item_request_builder.dart';
import './system_request_builder_get_query_parameters.dart';
import './system_request_builder_post_query_parameters.dart';

/// Builds and executes requests for operations under \system
class SystemRequestBuilder extends BaseRequestBuilder<SystemRequestBuilder> {
    /// Gets an item from the ApiSdk.system.item collection
    /// <param name="systemid">systemid</param>
     WithSystemItemRequestBuilder bySystemid(int systemid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("systemid", ()=> systemid);
        return WithSystemItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
     SystemRequestBuilder clone() {
        return SystemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [SystemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     SystemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system{?account*,active*,additional*,any*,contentAdministrator*,createdAfter*,createdBefore*,exclude*,expiredCertificate*,externalUuid*,forAzureOIDCDirectory*,forBaseSystem*,forClient*,forLDAPDirectory*,group*,groupDN*,groupOnSystem*,id*,modifiedSince*,name*,nameContains*,nameDoesNotStartWith*,nameStartsWith*,notInGroup*,numbering*,organizationalUnit*,organizationalUnitForEnforcement*,ownedBy*,provisioningGroup*,q*,selfServiceExistingGroups*,selfServiceNewGroups*,selfServiceServiceAccounts*,serviceAccountDN*,sort*,technicalAdministrator*,tls*,type*,uuid*}", pathParameters) ;
    /// Instantiates a new [SystemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     SystemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system{?account*,active*,additional*,any*,contentAdministrator*,createdAfter*,createdBefore*,exclude*,expiredCertificate*,externalUuid*,forAzureOIDCDirectory*,forBaseSystem*,forClient*,forLDAPDirectory*,group*,groupDN*,groupOnSystem*,id*,modifiedSince*,name*,nameContains*,nameDoesNotStartWith*,nameStartsWith*,notInGroup*,numbering*,organizationalUnit*,organizationalUnitForEnforcement*,ownedBy*,provisioningGroup*,q*,selfServiceExistingGroups*,selfServiceNewGroups*,selfServiceServiceAccounts*,serviceAccountDN*,sort*,technicalAdministrator*,tls*,type*,uuid*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all provisioned systems in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<ProvisionedSystemLinkableWrapper?> getAsync([Function(RequestConfiguration<SystemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionedSystemLinkableWrapper>(requestInfo, ProvisionedSystemLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new provisioned systems and returns the newly created systems.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<ProvisionedSystemLinkableWrapper?> postAsync(ProvisionedSystemLinkableWrapper body, [Function(RequestConfiguration<SystemRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionedSystemLinkableWrapper>(requestInfo, ProvisionedSystemLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all provisioned systems in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<SystemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<SystemRequestBuilderGetQueryParameters>(requestConfiguration, () => SystemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Creates one or more new provisioned systems and returns the newly created systems.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPostRequestInformation(ProvisionedSystemLinkableWrapper body, [Function(RequestConfiguration<SystemRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<SystemRequestBuilderPostQueryParameters>(requestConfiguration, () => SystemRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=73', body);
        return requestInfo;
    }
}
