import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../../models/audit/group_audit.dart';
import '../../../../models/error_report.dart';
import './with_audit_item_request_builder_get_query_parameters.dart';
import './with_audit_item_request_builder_put_query_parameters.dart';

/// Builds and executes requests for operations under \group\{groupid}\audit\{auditid}
class WithAuditItemRequestBuilder extends BaseRequestBuilder<WithAuditItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     WithAuditItemRequestBuilder clone() {
        return WithAuditItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithAuditItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithAuditItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/audit/{auditid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithAuditItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithAuditItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/audit/{auditid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the single audits for the group.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<GroupAudit?> getAsync([Function(RequestConfiguration<WithAuditItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupAudit>(requestInfo, GroupAudit.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the audits for a group identified by the id. Only audits in draft can be updated.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<GroupAudit?> putAsync(GroupAudit body, [Function(RequestConfiguration<WithAuditItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupAudit>(requestInfo, GroupAudit.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the single audits for the group.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithAuditItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithAuditItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithAuditItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Updates the audits for a group identified by the id. Only audits in draft can be updated.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPutRequestInformation(GroupAudit body, [Function(RequestConfiguration<WithAuditItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithAuditItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithAuditItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=73', body);
        return requestInfo;
    }
}
