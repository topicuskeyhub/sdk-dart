// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error_report.dart';
import '../../../../../models/identitysource/imported_row_linkable_wrapper.dart';
import './item/with_row_item_request_builder.dart';
import './row_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \identitysource\{identitysource-id}\document\{documentid}\row
class RowRequestBuilder extends BaseRequestBuilder<RowRequestBuilder> {
    /// Gets an item from the ApiSdk.identitysource.item.document.item.row.item collection
    ///  [rowid] Unique identifier of the item
    WithRowItemRequestBuilder byRowid(int rowid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('rowid', () => rowid);
        return WithRowItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    RowRequestBuilder clone() {
        return RowRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RowRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RowRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/identitysource/{identitysource%2Did}/document/{documentid}/row{?additional*,any*,createdAfter*,createdBefore*,document*,exclude*,id*,identifier*,matchedAccount*,modifiedSince*,q*,sort*,status*}", pathParameters) ;
    /// Instantiates a new [RowRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RowRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/identitysource/{identitysource%2Did}/document/{documentid}/row{?additional*,any*,createdAfter*,createdBefore*,document*,exclude*,id*,identifier*,matchedAccount*,modifiedSince*,q*,sort*,status*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for imported rows in the imported document. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ImportedRowLinkableWrapper?> getAsync([void Function(RequestConfiguration<RowRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ImportedRowLinkableWrapper>(requestInfo, ImportedRowLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for imported rows in the imported document. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<RowRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<RowRequestBuilderGetQueryParameters>(requestConfiguration, () => RowRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=83');
        return requestInfo;
    }
}
