// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/organization/account_organizational_unit_linkable_wrapper.dart';
import './item/with_organizationalunit_item_request_builder.dart';
import './organizationalunit_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \account\{accountid}\organizationalunit
class OrganizationalunitRequestBuilder extends BaseRequestBuilder<OrganizationalunitRequestBuilder> {
    /// Gets an item from the ApiSdk.account.item.organizationalunit.item collection
    ///  [organizationalunitid] Unique identifier of the item
    WithOrganizationalunitItemRequestBuilder byOrganizationalunitid(int organizationalunitid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('organizationalunitid', () => organizationalunitid);
        return WithOrganizationalunitItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    OrganizationalunitRequestBuilder clone() {
        return OrganizationalunitRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [OrganizationalunitRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    OrganizationalunitRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/organizationalunit{?account*,accountDirectoryOwnedBy*,additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,organizationalUnit*,organizationalUnitOwnedBy*,q*,sort*}", pathParameters) ;
    /// Instantiates a new [OrganizationalunitRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    OrganizationalunitRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/organizationalunit{?account*,accountDirectoryOwnedBy*,additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,organizationalUnit*,organizationalUnitOwnedBy*,q*,sort*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Queries over all organizational units the account is member of. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccountOrganizationalUnitLinkableWrapper?> getAsync([void Function(RequestConfiguration<OrganizationalunitRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountOrganizationalUnitLinkableWrapper>(requestInfo, AccountOrganizationalUnitLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Queries over all organizational units the account is member of. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<OrganizationalunitRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<OrganizationalunitRequestBuilderGetQueryParameters>(requestConfiguration, () => OrganizationalunitRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=80');
        return requestInfo;
    }
}
