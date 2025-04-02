// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/audit/audit_record.dart';
import '../../models/error_report.dart';
import './with_audit_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \audit\{auditid}
class WithAuditItemRequestBuilder extends BaseRequestBuilder<WithAuditItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithAuditItemRequestBuilder clone() {
        return WithAuditItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithAuditItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithAuditItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/audit/{auditid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithAuditItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithAuditItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/audit/{auditid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the audit record identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AuditRecord?> getAsync([void Function(RequestConfiguration<WithAuditItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AuditRecord>(requestInfo, AuditRecord.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the audit record identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithAuditItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithAuditItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithAuditItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=77');
        return requestInfo;
    }
}
