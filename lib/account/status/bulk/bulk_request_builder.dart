import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/auth/account_bulk_update.dart';
import '../../../models/error_report.dart';
import './bulk_request_builder_put_query_parameters.dart';

/// Builds and executes requests for operations under \account\status\bulk
class BulkRequestBuilder extends BaseRequestBuilder<BulkRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    BulkRequestBuilder clone() {
        return BulkRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [BulkRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    BulkRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/status/bulk{?accessProfile*,activationCode*,activationDeadlineAtOrAfter*,active*,activeSince*,admin*,any*,baseOrganizationalUnitAncestorOf*,createdAfter*,createdBefore*,directory*,directoryOwnedBy*,email*,exclude*,externalId*,group*,hasEmail*,hasVault*,hasVaultSecretForGroup*,id*,idInDirectory*,inactiveSince*,licenseRole*,maintenanceAdmin*,managerForGroup*,memberOfOrganizationalUnit*,modifiedSince*,nameDoesNotStartWith*,nameStartsWith*,notInAccessProfile*,notInGroup*,owningClient*,q*,reregistrationRequired*,rotatingPasswordEnabled*,sort*,twoFactorStatus*,username*,usernameContains*,uuid*,validInDirectory*,validity*,vault*}", pathParameters) ;
    /// Instantiates a new [BulkRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    BulkRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/status/bulk{?accessProfile*,activationCode*,activationDeadlineAtOrAfter*,active*,activeSince*,admin*,any*,baseOrganizationalUnitAncestorOf*,createdAfter*,createdBefore*,directory*,directoryOwnedBy*,email*,exclude*,externalId*,group*,hasEmail*,hasVault*,hasVaultSecretForGroup*,id*,idInDirectory*,inactiveSince*,licenseRole*,maintenanceAdmin*,managerForGroup*,memberOfOrganizationalUnit*,modifiedSince*,nameDoesNotStartWith*,nameStartsWith*,notInAccessProfile*,notInGroup*,owningClient*,q*,reregistrationRequired*,rotatingPasswordEnabled*,sort*,twoFactorStatus*,username*,usernameContains*,uuid*,validInDirectory*,validity*,vault*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Updates multiple accounts. The given accounts will be updated according to the selected action, for example, have their license role set to the given license role, provided this matches the current license's conditions.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<void> putAsync(AccountBulkUpdate body, [Function(RequestConfiguration<BulkRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Updates multiple accounts. The given accounts will be updated according to the selected action, for example, have their license role set to the given license role, provided this matches the current license's conditions.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPutRequestInformation(AccountBulkUpdate body, [Function(RequestConfiguration<BulkRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<BulkRequestBuilderPutQueryParameters>(requestConfiguration, () => BulkRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
