// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/audit/audit_record_linkable_wrapper.dart';
import '../models/error_report.dart';
import './audit_request_builder_get_query_parameters.dart';
import './export_/export_request_builder.dart';
import './item/with_audit_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \audit
class AuditRequestBuilder extends BaseRequestBuilder<AuditRequestBuilder> {
    ///  The export property
    ExportRequestBuilder get export_ {
        return ExportRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the ApiSdk.audit.item collection
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
    AuditRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/audit{?additional*,after*,any*,before*,containing*,createdAfter*,createdBefore*,exclude*,id*,includeDaily*,modifiedSince*,onGroup*,onGroup1*,onOrByAccount*,onOrByClient*,onServiceAccount*,performedByNameSet*,performedByUuid*,q*,sort*,type*,visibleFor*}", pathParameters) ;
    /// Instantiates a new [AuditRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AuditRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/audit{?additional*,after*,any*,before*,containing*,createdAfter*,createdBefore*,exclude*,id*,includeDaily*,modifiedSince*,onGroup*,onGroup1*,onOrByAccount*,onOrByClient*,onServiceAccount*,performedByNameSet*,performedByUuid*,q*,sort*,type*,visibleFor*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all audit records in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AuditRecordLinkableWrapper?> getAsync([void Function(RequestConfiguration<AuditRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AuditRecordLinkableWrapper>(requestInfo, AuditRecordLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all audit records in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<AuditRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AuditRequestBuilderGetQueryParameters>(requestConfiguration, () => AuditRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=81');
        return requestInfo;
    }
}
