// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/serviceaccount/service_accounts_audit_stats.dart';

/// auto generated
/// Builds and executes requests for operations under \serviceaccount\auditstats
class AuditstatsRequestBuilder extends BaseRequestBuilder<AuditstatsRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    AuditstatsRequestBuilder clone() {
        return AuditstatsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AuditstatsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AuditstatsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/serviceaccount/auditstats", pathParameters) ;
    /// Instantiates a new [AuditstatsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AuditstatsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/serviceaccount/auditstats", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the counts and statistics of service accounts within Topicus KeyHub.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ServiceAccountsAuditStats?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ServiceAccountsAuditStats>(requestInfo, ServiceAccountsAuditStats.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the counts and statistics of service accounts within Topicus KeyHub.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=75');
        return requestInfo;
    }
}
