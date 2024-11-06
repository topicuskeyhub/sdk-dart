import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../models/audit/audit_record_linkable_wrapper.dart';
import '../models/error_report.dart';
import './audit_request_builder_get_query_parameters.dart';
import './exportEscaped/export_request_builder.dart';
import './item/with_audit_item_request_builder.dart';

/// Builds and executes requests for operations under \audit
class AuditRequestBuilder extends BaseRequestBuilder<AuditRequestBuilder> {
    ///  The export property
    ExportRequestBuilder get exportEscaped {
        return ExportRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the ApiSdk.audit.item collection
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
    AuditRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/audit{?additional*,after*,any*,before*,containing*,createdAfter*,createdBefore*,exclude*,id*,includeDaily*,modifiedSince*,onGroup*,onGroup1*,onOrByAccount*,onOrByClient*,onServiceAccount*,performedByNameSet*,performedByUuid*,q*,sort*,type*,visibleFor*}", pathParameters) ;
    /// Instantiates a new [AuditRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    AuditRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/audit{?additional*,after*,any*,before*,containing*,createdAfter*,createdBefore*,exclude*,id*,includeDaily*,modifiedSince*,onGroup*,onGroup1*,onOrByAccount*,onOrByClient*,onServiceAccount*,performedByNameSet*,performedByUuid*,q*,sort*,type*,visibleFor*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all audit records in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<AuditRecordLinkableWrapper?> getAsync([Function(RequestConfiguration<AuditRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AuditRecordLinkableWrapper>(requestInfo, AuditRecordLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all audit records in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<AuditRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AuditRequestBuilderGetQueryParameters>(requestConfiguration, () => AuditRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}
