// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/auth/account_linkable_wrapper.dart';
import '../models/error_report.dart';
import './account_request_builder_get_query_parameters.dart';
import './auditstats/auditstats_request_builder.dart';
import './export_/export_request_builder.dart';
import './item/with_account_item_request_builder.dart';
import './me/me_request_builder.dart';
import './provisioning/provisioning_request_builder.dart';
import './session/session_request_builder.dart';
import './status/status_request_builder.dart';
import './vault/vault_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \account
class AccountRequestBuilder extends BaseRequestBuilder<AccountRequestBuilder> {
    ///  The auditstats property
    AuditstatsRequestBuilder get auditstats {
        return AuditstatsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The export property
    ExportRequestBuilder get export_ {
        return ExportRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The me property
    MeRequestBuilder get me {
        return MeRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The provisioning property
    ProvisioningRequestBuilder get provisioning {
        return ProvisioningRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The session property
    SessionRequestBuilder get session {
        return SessionRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The status property
    StatusRequestBuilder get status {
        return StatusRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The vault property
    VaultRequestBuilder get vault {
        return VaultRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the ApiSdk.account.item collection
    ///  [accountid] Unique identifier of the item
    WithAccountItemRequestBuilder byAccountid(int accountid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('accountid', () => accountid);
        return WithAccountItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    AccountRequestBuilder clone() {
        return AccountRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AccountRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AccountRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account{?accessProfile*,activationCode*,activationDeadlineAtOrAfter*,active*,activeSince*,additional*,admin*,any*,baseOrganizationalUnitAncestorOf*,createdAfter*,createdBefore*,directory*,directoryOwnedBy*,email*,exclude*,externalId*,group*,hasBeenActive*,hasEmail*,hasVault*,hasVaultSecretForGroup*,id*,idInDirectory*,inactiveSince*,licenseRole*,maintenanceAdmin*,managerForGroup*,memberOfOrganizationalUnit*,modifiedSince*,nameDoesNotStartWith*,nameStartsWith*,notInAccessProfile*,notInGroup*,owningClient*,q*,reregistrationRequired*,rotatingPasswordEnabled*,sort*,twoFactorStatus*,username*,usernameContains*,uuid*,validInDirectory*,validity*,vault*}", pathParameters) ;
    /// Instantiates a new [AccountRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AccountRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account{?accessProfile*,activationCode*,activationDeadlineAtOrAfter*,active*,activeSince*,additional*,admin*,any*,baseOrganizationalUnitAncestorOf*,createdAfter*,createdBefore*,directory*,directoryOwnedBy*,email*,exclude*,externalId*,group*,hasBeenActive*,hasEmail*,hasVault*,hasVaultSecretForGroup*,id*,idInDirectory*,inactiveSince*,licenseRole*,maintenanceAdmin*,managerForGroup*,memberOfOrganizationalUnit*,modifiedSince*,nameDoesNotStartWith*,nameStartsWith*,notInAccessProfile*,notInGroup*,owningClient*,q*,reregistrationRequired*,rotatingPasswordEnabled*,sort*,twoFactorStatus*,username*,usernameContains*,uuid*,validInDirectory*,validity*,vault*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all accounts in Topicus KeyHub. This will query over all directories and return both active and inactive accounts. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccountLinkableWrapper?> getAsync([void Function(RequestConfiguration<AccountRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountLinkableWrapper>(requestInfo, AccountLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all accounts in Topicus KeyHub. This will query over all directories and return both active and inactive accounts. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<AccountRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AccountRequestBuilderGetQueryParameters>(requestConfiguration, () => AccountRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=75');
        return requestInfo;
    }
}
