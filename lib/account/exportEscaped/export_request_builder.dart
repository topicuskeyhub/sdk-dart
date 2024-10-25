import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/error_report.dart';

/// Builds and executes requests for operations under \account\export
class ExportRequestBuilder extends BaseRequestBuilder<ExportRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     ExportRequestBuilder clone() {
        return ExportRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ExportRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     ExportRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/export", pathParameters) ;
    /// Instantiates a new [ExportRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     ExportRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/export", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Prepares an export of accounts using the filtering specified in the query parameters. The URI of the export can be found in the returned Location header. This URI is valid for 2 minutes after being generated.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<void> postAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Prepares an export of accounts using the filtering specified in the query parameters. The URI of the export can be found in the returned Location header. This URI is valid for 2 minutes after being generated.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPostRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}
