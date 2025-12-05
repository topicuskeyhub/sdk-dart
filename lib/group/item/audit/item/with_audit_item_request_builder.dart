// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/audit/group_audit.dart';
import '../../../../models/error_report.dart';
import './with_audit_item_request_builder_get_query_parameters.dart';
import './with_audit_item_request_builder_put_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \group\{groupid}\audit\{auditid}
class WithAuditItemRequestBuilder extends BaseRequestBuilder<WithAuditItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithAuditItemRequestBuilder clone() {
        return WithAuditItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithAuditItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithAuditItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/audit/{auditid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithAuditItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithAuditItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/audit/{auditid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns a single audit for the group.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GroupAudit?> getAsync([void Function(RequestConfiguration<WithAuditItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupAudit>(requestInfo, GroupAudit.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the audit for a group identified by the id. Only audits in draft can be updated.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GroupAudit?> putAsync(GroupAudit body, [void Function(RequestConfiguration<WithAuditItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupAudit>(requestInfo, GroupAudit.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns a single audit for the group.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithAuditItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithAuditItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithAuditItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=82');
        return requestInfo;
    }
    /// Updates the audit for a group identified by the id. Only audits in draft can be updated.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPutRequestInformation(GroupAudit body, [void Function(RequestConfiguration<WithAuditItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithAuditItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithAuditItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=82');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=82', body);
        return requestInfo;
    }
}
