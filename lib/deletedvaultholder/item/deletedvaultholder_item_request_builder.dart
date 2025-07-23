// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/vault/deleted_vault_holder.dart';
import './deletedvaultholder_item_request_builder_get_query_parameters.dart';
import './recover/recover_request_builder.dart';
import './vault/vault_request_builder.dart';

/// auto generated
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
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DeletedvaultholderItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/deletedvaultholder/{deletedvaultholder%2Did}{?additional*}", pathParameters) ;
    /// Instantiates a new [DeletedvaultholderItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DeletedvaultholderItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/deletedvaultholder/{deletedvaultholder%2Did}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Permanently removes the deleted vault identified by the id. This cannot be undone.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the deleted vault identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<DeletedVaultHolder?> getAsync([void Function(RequestConfiguration<DeletedvaultholderItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<DeletedVaultHolder>(requestInfo, DeletedVaultHolder.createFromDiscriminatorValue, errorMapping);
    }
    /// Permanently removes the deleted vault identified by the id. This cannot be undone.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=79');
        return requestInfo;
    }
    /// Returns the deleted vault identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DeletedvaultholderItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DeletedvaultholderItemRequestBuilderGetQueryParameters>(requestConfiguration, () => DeletedvaultholderItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=79');
        return requestInfo;
    }
}
