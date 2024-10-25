import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/audit/audit_record.dart';
import '../../models/error_report.dart';
import './with_audit_item_request_builder_get_query_parameters.dart';

/// Builds and executes requests for operations under \audit\{auditid}
class WithAuditItemRequestBuilder extends BaseRequestBuilder<WithAuditItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     WithAuditItemRequestBuilder clone() {
        return WithAuditItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithAuditItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithAuditItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/audit/{auditid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithAuditItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithAuditItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/audit/{auditid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the audit record identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<AuditRecord?> getAsync([Function(RequestConfiguration<WithAuditItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AuditRecord>(requestInfo, AuditRecord.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the audit record identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithAuditItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithAuditItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithAuditItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}
