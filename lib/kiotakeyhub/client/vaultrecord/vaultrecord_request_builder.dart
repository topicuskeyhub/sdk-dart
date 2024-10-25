import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/vault/vault_record_linkable_wrapper.dart';
import './item/with_vaultrecord_item_request_builder.dart';
import './vaultrecord_request_builder_get_query_parameters.dart';

/// Builds and executes requests for operations under \vaultrecord
class VaultrecordRequestBuilder extends BaseRequestBuilder<VaultrecordRequestBuilder> {
    /// Gets an item from the ApiSdk.vaultrecord.item collection
    /// <param name="vaultrecordid">vaultrecordid</param>
     WithVaultrecordItemRequestBuilder byVaultrecordid(int vaultrecordid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("vaultrecordid", ()=> vaultrecordid);
        return WithVaultrecordItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
     VaultrecordRequestBuilder clone() {
        return VaultrecordRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [VaultrecordRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     VaultrecordRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/vaultrecord{?accessibleByAccount*,accessibleByAccountAsManager*,accessibleByClient*,account*,additional*,any*,client*,color*,createdAfter*,createdBefore*,exclude*,expireWarningBeforeOrAt*,filename*,group*,groupOrganizationalUnit*,hasNoPolicy*,hasParent*,hasValidPolicy*,id*,modifiedSince*,name*,nameContains*,parent*,q*,secret*,shareExpiresBeforeOrAt*,sort*,url*,username*,uuid*,vault*}", pathParameters) ;
    /// Instantiates a new [VaultrecordRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     VaultrecordRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/vaultrecord{?accessibleByAccount*,accessibleByAccountAsManager*,accessibleByClient*,account*,additional*,any*,client*,color*,createdAfter*,createdBefore*,exclude*,expireWarningBeforeOrAt*,filename*,group*,groupOrganizationalUnit*,hasNoPolicy*,hasParent*,hasValidPolicy*,id*,modifiedSince*,name*,nameContains*,parent*,q*,secret*,shareExpiresBeforeOrAt*,sort*,url*,username*,uuid*,vault*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for vault records over all vaults the user can access. The various query parameters can be used to filter the response. It is not possible to access secrets with a query that returns multiple results. Secrets can only be read one by one.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<VaultRecordLinkableWrapper?> getAsync([Function(RequestConfiguration<VaultrecordRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<VaultRecordLinkableWrapper>(requestInfo, VaultRecordLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for vault records over all vaults the user can access. The various query parameters can be used to filter the response. It is not possible to access secrets with a query that returns multiple results. Secrets can only be read one by one.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<VaultrecordRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<VaultrecordRequestBuilderGetQueryParameters>(requestConfiguration, () => VaultrecordRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}
