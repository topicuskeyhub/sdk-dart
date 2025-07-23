// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/provisioning/provisioned_system_linkable_wrapper.dart';
import './item/with_system_item_request_builder.dart';
import './system_request_builder_get_query_parameters.dart';
import './system_request_builder_post_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \system
class SystemRequestBuilder extends BaseRequestBuilder<SystemRequestBuilder> {
    /// Gets an item from the ApiSdk.system.item collection
    ///  [systemid] Unique identifier of the item
    WithSystemItemRequestBuilder bySystemid(int systemid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('systemid', () => systemid);
        return WithSystemItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    SystemRequestBuilder clone() {
        return SystemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [SystemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    SystemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system{?accessProfileProvisioning*,accessprofile*,account*,accountsWritable*,active*,additional*,any*,contentAdministrator*,createdAfter*,createdBefore*,exclude*,expiredCertificate*,externalUuid*,forAzureOIDCDirectory*,forBaseSystem*,forClient*,forLDAPDirectory*,group*,groupDN*,groupOnSystem*,id*,modifiedSince*,name*,nameContains*,nameDoesNotStartWith*,nameStartsWith*,notInGroup*,numbering*,organizationalUnit*,organizationalUnitForEnforcement*,ownedBy*,provisioningGroup*,q*,selfServiceExistingGroups*,selfServiceNewGroups*,selfServiceServiceAccounts*,serviceAccountDN*,sort*,technicalAdministrator*,tls*,type*,uuid*}", pathParameters) ;
    /// Instantiates a new [SystemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    SystemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system{?accessProfileProvisioning*,accessprofile*,account*,accountsWritable*,active*,additional*,any*,contentAdministrator*,createdAfter*,createdBefore*,exclude*,expiredCertificate*,externalUuid*,forAzureOIDCDirectory*,forBaseSystem*,forClient*,forLDAPDirectory*,group*,groupDN*,groupOnSystem*,id*,modifiedSince*,name*,nameContains*,nameDoesNotStartWith*,nameStartsWith*,notInGroup*,numbering*,organizationalUnit*,organizationalUnitForEnforcement*,ownedBy*,provisioningGroup*,q*,selfServiceExistingGroups*,selfServiceNewGroups*,selfServiceServiceAccounts*,serviceAccountDN*,sort*,technicalAdministrator*,tls*,type*,uuid*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all provisioned systems in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ProvisionedSystemLinkableWrapper?> getAsync([void Function(RequestConfiguration<SystemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionedSystemLinkableWrapper>(requestInfo, ProvisionedSystemLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new provisioned systems and returns the newly created systems.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ProvisionedSystemLinkableWrapper?> postAsync(ProvisionedSystemLinkableWrapper body, [void Function(RequestConfiguration<SystemRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionedSystemLinkableWrapper>(requestInfo, ProvisionedSystemLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all provisioned systems in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<SystemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<SystemRequestBuilderGetQueryParameters>(requestConfiguration, () => SystemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=79');
        return requestInfo;
    }
    /// Creates one or more new provisioned systems and returns the newly created systems.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(ProvisionedSystemLinkableWrapper body, [void Function(RequestConfiguration<SystemRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<SystemRequestBuilderPostQueryParameters>(requestConfiguration, () => SystemRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=79');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=79', body);
        return requestInfo;
    }
}
