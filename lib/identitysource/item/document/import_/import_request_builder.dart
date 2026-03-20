// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error_report.dart';

/// auto generated
/// Builds and executes requests for operations under \identitysource\{identitysource-id}\document\import
class ImportRequestBuilder extends BaseRequestBuilder<ImportRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ImportRequestBuilder clone() {
        return ImportRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ImportRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ImportRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/identitysource/{identitysource%2Did}/document/import", pathParameters) ;
    /// Instantiates a new [ImportRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ImportRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/identitysource/{identitysource%2Did}/document/import", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Imports the provided CSV file.
    ///  [body] Binary request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> postAsync(Iterable<int> body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Imports the provided CSV file.
    ///  [body] Binary request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(Iterable<int> body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=84');
        requestInfo.setContentFromScalar(requestAdapter, 'text/csv', body);
        return requestInfo;
    }
}
