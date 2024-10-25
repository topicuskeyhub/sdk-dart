import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../models/error_report.dart';
import './export_request_builder_get_query_parameters.dart';

/// Builds and executes requests for operations under \export
class ExportRequestBuilder extends BaseRequestBuilder<ExportRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     ExportRequestBuilder clone() {
        return ExportRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ExportRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     ExportRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/export{?export*}", pathParameters) ;
    /// Instantiates a new [ExportRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     ExportRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/export{?export*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Downloads the export previously prepared.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<Iterable<int>?> getAsync([Function(RequestConfiguration<ExportRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendPrimitiveCollection<int>(requestInfo, errorMapping);
    }
    /// Downloads the export previously prepared.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<ExportRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ExportRequestBuilderGetQueryParameters>(requestConfiguration, () => ExportRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'text/csv, application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}
