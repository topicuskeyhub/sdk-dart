// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../../models/error_report.dart';
import '../../../../../../models/identitysource/imported_row.dart';
import './with_row_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \identitysource\{identitysource-id}\document\{documentid}\row\{rowid}
class WithRowItemRequestBuilder extends BaseRequestBuilder<WithRowItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithRowItemRequestBuilder clone() {
        return WithRowItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithRowItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithRowItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/identitysource/{identitysource%2Did}/document/{documentid}/row/{rowid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithRowItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithRowItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/identitysource/{identitysource%2Did}/document/{documentid}/row/{rowid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the imported row identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ImportedRow?> getAsync([void Function(RequestConfiguration<WithRowItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ImportedRow>(requestInfo, ImportedRow.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the imported row identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithRowItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithRowItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithRowItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=84');
        return requestInfo;
    }
}
