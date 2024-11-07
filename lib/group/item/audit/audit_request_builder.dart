import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/audit/group_audit_linkable_wrapper.dart';
import '../../../models/error_report.dart';
import './audit_request_builder_get_query_parameters.dart';
import './audit_request_builder_post_query_parameters.dart';
import './item/with_audit_item_request_builder.dart';
import './newEscaped/new_request_builder.dart';

/// Builds and executes requests for operations under \group\{groupid}\audit
class AuditRequestBuilder extends BaseRequestBuilder<AuditRequestBuilder> {
    ///  The new property
    NewRequestBuilder get newEscaped {
        return NewRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the ApiSdk.group.item.audit.item collection
    /// <param name="auditid">auditid</param>
    WithAuditItemRequestBuilder byAuditid(int auditid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("auditid", ()=> auditid);
        return WithAuditItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    AuditRequestBuilder clone() {
        return AuditRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AuditRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    AuditRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/audit{?additional*,after*,any*,createdAfter*,createdBefore*,exclude*,group*,id*,lastForGroups*,modifiedSince*,q*,sort*,status*}", pathParameters) ;
    /// Instantiates a new [AuditRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    AuditRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/audit{?additional*,after*,any*,createdAfter*,createdBefore*,exclude*,group*,id*,lastForGroups*,modifiedSince*,q*,sort*,status*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Queries over all audits for a group. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<GroupAuditLinkableWrapper?> getAsync([Function(RequestConfiguration<AuditRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupAuditLinkableWrapper>(requestInfo, GroupAuditLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new new audits for a group and returns the newly created memberships. Fetch a template for an audit via the 'new' resource.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<GroupAuditLinkableWrapper?> postAsync(GroupAuditLinkableWrapper body, [Function(RequestConfiguration<AuditRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupAuditLinkableWrapper>(requestInfo, GroupAuditLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Queries over all audits for a group. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<AuditRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AuditRequestBuilderGetQueryParameters>(requestConfiguration, () => AuditRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Creates one or more new new audits for a group and returns the newly created memberships. Fetch a template for an audit via the 'new' resource.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPostRequestInformation(GroupAuditLinkableWrapper body, [Function(RequestConfiguration<AuditRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AuditRequestBuilderPostQueryParameters>(requestConfiguration, () => AuditRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
