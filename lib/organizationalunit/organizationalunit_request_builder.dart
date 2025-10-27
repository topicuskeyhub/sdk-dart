// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/organization/organizational_unit_linkable_wrapper.dart';
import './item/with_organizationalunit_item_request_builder.dart';
import './organizationalunit_request_builder_get_query_parameters.dart';
import './organizationalunit_request_builder_post_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \organizationalunit
class OrganizationalunitRequestBuilder extends BaseRequestBuilder<OrganizationalunitRequestBuilder> {
    /// Gets an item from the ApiSdk.organizationalunit.item collection
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
    OrganizationalunitRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/organizationalunit{?accountIsAuditor*,additional*,ancestorOfOrEqualTo*,any*,auditorGroup*,connectedToAccount*,createGroupApproveGroup*,createdAfter*,createdBefore*,descendantOfOrEqualTo*,enableTechAdminApproveGroup*,exclude*,id*,modifiedSince*,name*,nameContains*,ownedBy*,parent*,q*,recoveryFallbackGroup*,removeGroupApproveGroup*,root*,sort*,uuid*}", pathParameters) ;
    /// Instantiates a new [OrganizationalunitRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    OrganizationalunitRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/organizationalunit{?accountIsAuditor*,additional*,ancestorOfOrEqualTo*,any*,auditorGroup*,connectedToAccount*,createGroupApproveGroup*,createdAfter*,createdBefore*,descendantOfOrEqualTo*,enableTechAdminApproveGroup*,exclude*,id*,modifiedSince*,name*,nameContains*,ownedBy*,parent*,q*,recoveryFallbackGroup*,removeGroupApproveGroup*,root*,sort*,uuid*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all organizational units in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<OrganizationalUnitLinkableWrapper?> getAsync([void Function(RequestConfiguration<OrganizationalunitRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<OrganizationalUnitLinkableWrapper>(requestInfo, OrganizationalUnitLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new organizational units and returns the newly created units.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<OrganizationalUnitLinkableWrapper?> postAsync(OrganizationalUnitLinkableWrapper body, [void Function(RequestConfiguration<OrganizationalunitRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<OrganizationalUnitLinkableWrapper>(requestInfo, OrganizationalUnitLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all organizational units in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<OrganizationalunitRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<OrganizationalunitRequestBuilderGetQueryParameters>(requestConfiguration, () => OrganizationalunitRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=81');
        return requestInfo;
    }
    /// Creates one or more new organizational units and returns the newly created units.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(OrganizationalUnitLinkableWrapper body, [void Function(RequestConfiguration<OrganizationalunitRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<OrganizationalunitRequestBuilderPostQueryParameters>(requestConfiguration, () => OrganizationalunitRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=81');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=81', body);
        return requestInfo;
    }
}
