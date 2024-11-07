import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/vault/deleted_vault_holder_linkable_wrapper.dart';
import './deletedvaultholder_request_builder_get_query_parameters.dart';
import './item/deletedvaultholder_item_request_builder.dart';

/// Builds and executes requests for operations under \deletedvaultholder
class DeletedvaultholderRequestBuilder extends BaseRequestBuilder<DeletedvaultholderRequestBuilder> {
    /// Gets an item from the ApiSdk.deletedvaultholder.item collection
    /// <param name="deletedvaultholderId">deletedvaultholderId</param>
    DeletedvaultholderItemRequestBuilder byDeletedvaultholderId(int deletedvaultholderId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("deletedvaultholderId", ()=> deletedvaultholderId);
        return DeletedvaultholderItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    DeletedvaultholderRequestBuilder clone() {
        return DeletedvaultholderRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [DeletedvaultholderRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    DeletedvaultholderRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/deletedvaultholder{?additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,q*,sort*,vault*}", pathParameters) ;
    /// Instantiates a new [DeletedvaultholderRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    DeletedvaultholderRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/deletedvaultholder{?additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,q*,sort*,vault*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all deletes vaults in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<DeletedVaultHolderLinkableWrapper?> getAsync([Function(RequestConfiguration<DeletedvaultholderRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<DeletedVaultHolderLinkableWrapper>(requestInfo, DeletedVaultHolderLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all deletes vaults in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<DeletedvaultholderRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DeletedvaultholderRequestBuilderGetQueryParameters>(requestConfiguration, () => DeletedvaultholderRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}
