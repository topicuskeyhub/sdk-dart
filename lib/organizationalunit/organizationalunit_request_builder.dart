import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/organization/organizational_unit_linkable_wrapper.dart';
import './item/with_organizationalunit_item_request_builder.dart';
import './organizationalunit_request_builder_get_query_parameters.dart';
import './organizationalunit_request_builder_post_query_parameters.dart';

/// Builds and executes requests for operations under \organizationalunit
class OrganizationalunitRequestBuilder extends BaseRequestBuilder<OrganizationalunitRequestBuilder> {
    /// Gets an item from the ApiSdk.organizationalunit.item collection
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
     OrganizationalunitRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/organizationalunit{?accountIsAuditor*,additional*,ancestorOfOrEqualTo*,any*,auditorGroup*,connectedToAccount*,createGroupApproveGroup*,createdAfter*,createdBefore*,descendantOfOrEqualTo*,enableTechAdminApproveGroup*,exclude*,id*,modifiedSince*,name*,nameContains*,ownedBy*,parent*,q*,recoveryFallbackGroup*,removeGroupApproveGroup*,root*,sort*,uuid*}", pathParameters) ;
    /// Instantiates a new [OrganizationalunitRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     OrganizationalunitRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/organizationalunit{?accountIsAuditor*,additional*,ancestorOfOrEqualTo*,any*,auditorGroup*,connectedToAccount*,createGroupApproveGroup*,createdAfter*,createdBefore*,descendantOfOrEqualTo*,enableTechAdminApproveGroup*,exclude*,id*,modifiedSince*,name*,nameContains*,ownedBy*,parent*,q*,recoveryFallbackGroup*,removeGroupApproveGroup*,root*,sort*,uuid*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all organizational units in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<OrganizationalUnitLinkableWrapper?> getAsync([Function(RequestConfiguration<OrganizationalunitRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<OrganizationalUnitLinkableWrapper>(requestInfo, OrganizationalUnitLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new organizational units and returns the newly created units.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<OrganizationalUnitLinkableWrapper?> postAsync(OrganizationalUnitLinkableWrapper body, [Function(RequestConfiguration<OrganizationalunitRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<OrganizationalUnitLinkableWrapper>(requestInfo, OrganizationalUnitLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all organizational units in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<OrganizationalunitRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<OrganizationalunitRequestBuilderGetQueryParameters>(requestConfiguration, () => OrganizationalunitRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Creates one or more new organizational units and returns the newly created units.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPostRequestInformation(OrganizationalUnitLinkableWrapper body, [Function(RequestConfiguration<OrganizationalunitRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<OrganizationalunitRequestBuilderPostQueryParameters>(requestConfiguration, () => OrganizationalunitRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=73', body);
        return requestInfo;
    }
}
