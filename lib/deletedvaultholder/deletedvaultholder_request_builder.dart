// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/vault/deleted_vault_holder_linkable_wrapper.dart';
import './deletedvaultholder_request_builder_get_query_parameters.dart';
import './item/deletedvaultholder_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \deletedvaultholder
class DeletedvaultholderRequestBuilder extends BaseRequestBuilder<DeletedvaultholderRequestBuilder> {
    /// Gets an item from the ApiSdk.deletedvaultholder.item collection
    ///  [deletedvaultholderId] Unique identifier of the item
    DeletedvaultholderItemRequestBuilder byDeletedvaultholderId(int deletedvaultholderId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('deletedvaultholder%2Did', () => deletedvaultholderId);
        return DeletedvaultholderItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    DeletedvaultholderRequestBuilder clone() {
        return DeletedvaultholderRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [DeletedvaultholderRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DeletedvaultholderRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/deletedvaultholder{?additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,q*,sort*,vault*}", pathParameters) ;
    /// Instantiates a new [DeletedvaultholderRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DeletedvaultholderRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/deletedvaultholder{?additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,q*,sort*,vault*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all deletes vaults in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<DeletedVaultHolderLinkableWrapper?> getAsync([void Function(RequestConfiguration<DeletedvaultholderRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<DeletedVaultHolderLinkableWrapper>(requestInfo, DeletedVaultHolderLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all deletes vaults in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DeletedvaultholderRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DeletedvaultholderRequestBuilderGetQueryParameters>(requestConfiguration, () => DeletedvaultholderRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=79');
        return requestInfo;
    }
}
