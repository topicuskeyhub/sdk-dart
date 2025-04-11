// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/vault/deleted_vault_recovery.dart';

/// auto generated
/// Builds and executes requests for operations under \deletedvaultholder\{deletedvaultholder-id}\recover
class RecoverRequestBuilder extends BaseRequestBuilder<RecoverRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RecoverRequestBuilder clone() {
        return RecoverRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RecoverRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RecoverRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/deletedvaultholder/{deletedvaultholder%2Did}/recover", pathParameters) ;
    /// Instantiates a new [RecoverRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RecoverRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/deletedvaultholder/{deletedvaultholder%2Did}/recover", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Recover a deleted vault, moving the records to a group or personal vault.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> postAsync(DeletedVaultRecovery body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Recover a deleted vault, moving the records to a group or personal vault.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(DeletedVaultRecovery body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=78', body);
        return requestInfo;
    }
}
