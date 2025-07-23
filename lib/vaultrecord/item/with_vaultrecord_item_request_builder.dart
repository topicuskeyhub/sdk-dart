// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/vault/vault_record.dart';
import './with_vaultrecord_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \vaultrecord\{vaultrecordid}
class WithVaultrecordItemRequestBuilder extends BaseRequestBuilder<WithVaultrecordItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithVaultrecordItemRequestBuilder clone() {
        return WithVaultrecordItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithVaultrecordItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithVaultrecordItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/vaultrecord/{vaultrecordid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithVaultrecordItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithVaultrecordItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/vaultrecord/{vaultrecordid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the vault record identified by the id. To access the secrets, use the full uri of the record. This endpoint does not support reading secrets.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<VaultRecord?> getAsync([void Function(RequestConfiguration<WithVaultrecordItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<VaultRecord>(requestInfo, VaultRecord.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the vault record identified by the id. To access the secrets, use the full uri of the record. This endpoint does not support reading secrets.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithVaultrecordItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithVaultrecordItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithVaultrecordItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=79');
        return requestInfo;
    }
}
