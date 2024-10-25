import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/vault/vault_record.dart';
import './with_vaultrecord_item_request_builder_get_query_parameters.dart';

/// Builds and executes requests for operations under \vaultrecord\{vaultrecordid}
class WithVaultrecordItemRequestBuilder extends BaseRequestBuilder<WithVaultrecordItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     WithVaultrecordItemRequestBuilder clone() {
        return WithVaultrecordItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithVaultrecordItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithVaultrecordItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/vaultrecord/{vaultrecordid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithVaultrecordItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithVaultrecordItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/vaultrecord/{vaultrecordid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the vault record identified by the id. To access the secrets, use the full uri of the record. This endpoint does not support reading secrets.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<VaultRecord?> getAsync([Function(RequestConfiguration<WithVaultrecordItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<VaultRecord>(requestInfo, VaultRecord.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the vault record identified by the id. To access the secrets, use the full uri of the record. This endpoint does not support reading secrets.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithVaultrecordItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithVaultrecordItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithVaultrecordItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}
