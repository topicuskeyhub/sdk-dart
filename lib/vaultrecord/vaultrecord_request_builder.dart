// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/vault/vault_record_linkable_wrapper.dart';
import './item/with_vaultrecord_item_request_builder.dart';
import './vaultrecord_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \vaultrecord
class VaultrecordRequestBuilder extends BaseRequestBuilder<VaultrecordRequestBuilder> {
    /// Gets an item from the ApiSdk.vaultrecord.item collection
    ///  [vaultrecordid] Unique identifier of the item
    WithVaultrecordItemRequestBuilder byVaultrecordid(int vaultrecordid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('vaultrecordid', ()=> vaultrecordid);
        return WithVaultrecordItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    VaultrecordRequestBuilder clone() {
        return VaultrecordRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [VaultrecordRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    VaultrecordRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/vaultrecord{?accessibleByAccount*,accessibleByAccountAsManager*,accessibleByClient*,account*,additional*,any*,client*,color*,createdAfter*,createdBefore*,exclude*,expireWarningBeforeOrAt*,filename*,group*,groupOrganizationalUnit*,hasNoPolicy*,hasParent*,hasValidPolicy*,id*,modifiedSince*,name*,nameContains*,parent*,q*,secret*,shareExpiresBeforeOrAt*,sort*,url*,username*,uuid*,vault*}", pathParameters) ;
    /// Instantiates a new [VaultrecordRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    VaultrecordRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/vaultrecord{?accessibleByAccount*,accessibleByAccountAsManager*,accessibleByClient*,account*,additional*,any*,client*,color*,createdAfter*,createdBefore*,exclude*,expireWarningBeforeOrAt*,filename*,group*,groupOrganizationalUnit*,hasNoPolicy*,hasParent*,hasValidPolicy*,id*,modifiedSince*,name*,nameContains*,parent*,q*,secret*,shareExpiresBeforeOrAt*,sort*,url*,username*,uuid*,vault*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for vault records over all vaults the user can access. The various query parameters can be used to filter the response. It is not possible to access secrets with a query that returns multiple results. Secrets can only be read one by one.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<VaultRecordLinkableWrapper?> getAsync([void Function(RequestConfiguration<VaultrecordRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<VaultRecordLinkableWrapper>(requestInfo, VaultRecordLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for vault records over all vaults the user can access. The various query parameters can be used to filter the response. It is not possible to access secrets with a query that returns multiple results. Secrets can only be read one by one.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<VaultrecordRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<VaultrecordRequestBuilderGetQueryParameters>(requestConfiguration, () => VaultrecordRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}
