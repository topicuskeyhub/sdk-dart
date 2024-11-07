import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/vault/deleted_vault_holder.dart';
import './deletedvaultholder_item_request_builder_get_query_parameters.dart';
import './recover/recover_request_builder.dart';
import './vault/vault_request_builder.dart';

/// Builds and executes requests for operations under \deletedvaultholder\{deletedvaultholder-id}
class DeletedvaultholderItemRequestBuilder extends BaseRequestBuilder<DeletedvaultholderItemRequestBuilder> {
    ///  The recover property
    RecoverRequestBuilder get recover {
        return RecoverRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The vault property
    VaultRequestBuilder get vault {
        return VaultRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    DeletedvaultholderItemRequestBuilder clone() {
        return DeletedvaultholderItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [DeletedvaultholderItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    DeletedvaultholderItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/deletedvaultholder/{deletedvaultholder%2Did}{?additional*}", pathParameters) ;
    /// Instantiates a new [DeletedvaultholderItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    DeletedvaultholderItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/deletedvaultholder/{deletedvaultholder%2Did}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Permanently removes the deleted vault identified by the id. This cannot be undone.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<void> deleteAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the deleted vault identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<DeletedVaultHolder?> getAsync([Function(RequestConfiguration<DeletedvaultholderItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<DeletedVaultHolder>(requestInfo, DeletedVaultHolder.createFromDiscriminatorValue, errorMapping);
    }
    /// Permanently removes the deleted vault identified by the id. This cannot be undone.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toDeleteRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Returns the deleted vault identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<DeletedvaultholderItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DeletedvaultholderItemRequestBuilderGetQueryParameters>(requestConfiguration, () => DeletedvaultholderItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}
