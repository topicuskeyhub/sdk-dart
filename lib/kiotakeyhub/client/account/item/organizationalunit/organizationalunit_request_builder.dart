import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/organization/account_organizational_unit_linkable_wrapper.dart';
import './item/with_organizationalunit_item_request_builder.dart';
import './organizationalunit_request_builder_get_query_parameters.dart';

/// Builds and executes requests for operations under \account\{accountid}\organizationalunit
class OrganizationalunitRequestBuilder extends BaseRequestBuilder<OrganizationalunitRequestBuilder> {
    /// Gets an item from the ApiSdk.account.item.organizationalunit.item collection
    /// <param name="organizationalunitid">organizationalunitid</param>
     WithOrganizationalunitItemRequestBuilder byOrganizationalunitid(int organizationalunitid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("organizationalunitid", ()=> organizationalunitid);
        return WithOrganizationalunitItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
     OrganizationalunitRequestBuilder clone() {
        return OrganizationalunitRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [OrganizationalunitRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     OrganizationalunitRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/organizationalunit{?account*,accountDirectoryOwnedBy*,additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,organizationalUnit*,organizationalUnitOwnedBy*,q*,sort*}", pathParameters) ;
    /// Instantiates a new [OrganizationalunitRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     OrganizationalunitRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/organizationalunit{?account*,accountDirectoryOwnedBy*,additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,organizationalUnit*,organizationalUnitOwnedBy*,q*,sort*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Queries over all organizational units the account is member of. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<AccountOrganizationalUnitLinkableWrapper?> getAsync([Function(RequestConfiguration<OrganizationalunitRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountOrganizationalUnitLinkableWrapper>(requestInfo, AccountOrganizationalUnitLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Queries over all organizational units the account is member of. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<OrganizationalunitRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<OrganizationalunitRequestBuilderGetQueryParameters>(requestConfiguration, () => OrganizationalunitRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}
