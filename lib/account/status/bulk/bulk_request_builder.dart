// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/auth/account_bulk_update.dart';
import '../../../models/error_report.dart';
import './bulk_request_builder_put_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \account\status\bulk
class BulkRequestBuilder extends BaseRequestBuilder<BulkRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    BulkRequestBuilder clone() {
        return BulkRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [BulkRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    BulkRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/status/bulk{?accessProfile*,activationCode*,activationDeadlineAtOrAfter*,active*,activeSince*,admin*,any*,baseOrganizationalUnitAncestorOf*,createdAfter*,createdBefore*,directory*,directoryOwnedBy*,email*,exclude*,externalId*,group*,hasBeenActive*,hasEmail*,hasVault*,hasVaultSecretForGroup*,id*,idInDirectory*,inactiveSince*,licenseRole*,maintenanceAdmin*,managerForGroup*,memberOfOrganizationalUnit*,modifiedSince*,nameDoesNotStartWith*,nameStartsWith*,notInAccessProfile*,notInGroup*,owningClient*,q*,reregistrationRequired*,rotatingPasswordEnabled*,sort*,twoFactorStatus*,username*,usernameContains*,uuid*,validInDirectory*,validity*,vault*}", pathParameters) ;
    /// Instantiates a new [BulkRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    BulkRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/status/bulk{?accessProfile*,activationCode*,activationDeadlineAtOrAfter*,active*,activeSince*,admin*,any*,baseOrganizationalUnitAncestorOf*,createdAfter*,createdBefore*,directory*,directoryOwnedBy*,email*,exclude*,externalId*,group*,hasBeenActive*,hasEmail*,hasVault*,hasVaultSecretForGroup*,id*,idInDirectory*,inactiveSince*,licenseRole*,maintenanceAdmin*,managerForGroup*,memberOfOrganizationalUnit*,modifiedSince*,nameDoesNotStartWith*,nameStartsWith*,notInAccessProfile*,notInGroup*,owningClient*,q*,reregistrationRequired*,rotatingPasswordEnabled*,sort*,twoFactorStatus*,username*,usernameContains*,uuid*,validInDirectory*,validity*,vault*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Updates multiple accounts. The given accounts will be updated according to the selected action, for example, have their license role set to the given license role, provided this matches the current license's conditions.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> putAsync(AccountBulkUpdate body, [void Function(RequestConfiguration<BulkRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Updates multiple accounts. The given accounts will be updated according to the selected action, for example, have their license role set to the given license role, provided this matches the current license's conditions.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPutRequestInformation(AccountBulkUpdate body, [void Function(RequestConfiguration<BulkRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<BulkRequestBuilderPutQueryParameters>(requestConfiguration, () => BulkRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=75');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=75', body);
        return requestInfo;
    }
}
