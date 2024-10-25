import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/request/modification_request.dart';
import '../../models/request/modification_request_report.dart';

/// Builds and executes requests for operations under \request\report
class ReportRequestBuilder extends BaseRequestBuilder<ReportRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     ReportRequestBuilder clone() {
        return ReportRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ReportRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     ReportRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/request/report", pathParameters) ;
    /// Instantiates a new [ReportRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     ReportRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/request/report", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<ModificationRequestReport?> postAsync(ModificationRequest body, [Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ModificationRequestReport>(requestInfo, ModificationRequestReport.createFromDiscriminatorValue, errorMapping);
    }
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPostRequestInformation(ModificationRequest body, [Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=73', body);
        return requestInfo;
    }
}
