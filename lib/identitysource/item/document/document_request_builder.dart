// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/identitysource/imported_document_linkable_wrapper.dart';
import './document_request_builder_get_query_parameters.dart';
import './document_request_builder_post_query_parameters.dart';
import './import_/import_request_builder.dart';
import './item/with_document_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \identitysource\{identitysource-id}\document
class DocumentRequestBuilder extends BaseRequestBuilder<DocumentRequestBuilder> {
    ///  The import property
    ImportRequestBuilder get import_ {
        return ImportRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the ApiSdk.identitysource.item.document.item collection
    ///  [documentid] Unique identifier of the item
    WithDocumentItemRequestBuilder byDocumentid(int documentid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('documentid', () => documentid);
        return WithDocumentItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    DocumentRequestBuilder clone() {
        return DocumentRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [DocumentRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DocumentRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/identitysource/{identitysource%2Did}/document{?additional*,any*,createdAfter*,createdBefore*,exclude*,id*,identitySource*,modifiedSince*,q*,sort*}", pathParameters) ;
    /// Instantiates a new [DocumentRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DocumentRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/identitysource/{identitysource%2Did}/document{?additional*,any*,createdAfter*,createdBefore*,exclude*,id*,identitySource*,modifiedSince*,q*,sort*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for imported documents in Topicus KeyHub for the identitysource. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ImportedDocumentLinkableWrapper?> getAsync([void Function(RequestConfiguration<DocumentRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ImportedDocumentLinkableWrapper>(requestInfo, ImportedDocumentLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new imported documents and returns the newly created documentes.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ImportedDocumentLinkableWrapper?> postAsync(ImportedDocumentLinkableWrapper body, [void Function(RequestConfiguration<DocumentRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ImportedDocumentLinkableWrapper>(requestInfo, ImportedDocumentLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for imported documents in Topicus KeyHub for the identitysource. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DocumentRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DocumentRequestBuilderGetQueryParameters>(requestConfiguration, () => DocumentRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=84');
        return requestInfo;
    }
    /// Creates one or more new imported documents and returns the newly created documentes.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(ImportedDocumentLinkableWrapper body, [void Function(RequestConfiguration<DocumentRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DocumentRequestBuilderPostQueryParameters>(requestConfiguration, () => DocumentRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=84');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=84', body);
        return requestInfo;
    }
}
