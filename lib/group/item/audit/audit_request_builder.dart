// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/audit/group_audit_linkable_wrapper.dart';
import '../../../models/error_report.dart';
import './audit_request_builder_get_query_parameters.dart';
import './audit_request_builder_post_query_parameters.dart';
import './item/with_audit_item_request_builder.dart';
import './new_/new_request_builder.dart';
import './nextGroup/next_group_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \group\{groupid}\audit
class AuditRequestBuilder extends BaseRequestBuilder<AuditRequestBuilder> {
    ///  The new property
    NewRequestBuilder get new_ {
        return NewRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The nextGroup property
    NextGroupRequestBuilder get nextGroup {
        return NextGroupRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the ApiSdk.group.item.audit.item collection
    ///  [auditid] Unique identifier of the item
    WithAuditItemRequestBuilder byAuditid(int auditid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('auditid', () => auditid);
        return WithAuditItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    AuditRequestBuilder clone() {
        return AuditRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AuditRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AuditRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/audit{?additional*,after*,any*,createdAfter*,createdBefore*,exclude*,group*,id*,lastForGroups*,modifiedSince*,q*,sort*,status*}", pathParameters) ;
    /// Instantiates a new [AuditRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AuditRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/audit{?additional*,after*,any*,createdAfter*,createdBefore*,exclude*,group*,id*,lastForGroups*,modifiedSince*,q*,sort*,status*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Queries over all audits for a group. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GroupAuditLinkableWrapper?> getAsync([void Function(RequestConfiguration<AuditRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupAuditLinkableWrapper>(requestInfo, GroupAuditLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates an audit for a group and returns the newly created memberships. Fetch a template for an audit via the 'new' resource.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GroupAuditLinkableWrapper?> postAsync(GroupAuditLinkableWrapper body, [void Function(RequestConfiguration<AuditRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupAuditLinkableWrapper>(requestInfo, GroupAuditLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Queries over all audits for a group. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<AuditRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AuditRequestBuilderGetQueryParameters>(requestConfiguration, () => AuditRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=81');
        return requestInfo;
    }
    /// Creates an audit for a group and returns the newly created memberships. Fetch a template for an audit via the 'new' resource.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(GroupAuditLinkableWrapper body, [void Function(RequestConfiguration<AuditRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AuditRequestBuilderPostQueryParameters>(requestConfiguration, () => AuditRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=81');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=81', body);
        return requestInfo;
    }
}
