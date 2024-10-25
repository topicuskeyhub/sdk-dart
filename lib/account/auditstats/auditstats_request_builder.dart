import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/auth/accounts_audit_stats.dart';
import '../../models/error_report.dart';

/// Builds and executes requests for operations under \account\auditstats
class AuditstatsRequestBuilder extends BaseRequestBuilder<AuditstatsRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     AuditstatsRequestBuilder clone() {
        return AuditstatsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AuditstatsRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     AuditstatsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/auditstats", pathParameters) ;
    /// Instantiates a new [AuditstatsRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     AuditstatsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/auditstats", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the counts and statistics of accounts within Topicus KeyHub.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<AccountsAuditStats?> getAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountsAuditStats>(requestInfo, AccountsAuditStats.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the counts and statistics of accounts within Topicus KeyHub.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}