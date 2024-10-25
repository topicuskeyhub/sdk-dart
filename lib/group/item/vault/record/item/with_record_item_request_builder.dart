import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../../../models/error_report.dart';
import '../../../../../models/vault/vault_record.dart';
import './move/move_request_builder.dart';
import './with_record_item_request_builder_get_query_parameters.dart';
import './with_record_item_request_builder_put_query_parameters.dart';

/// Builds and executes requests for operations under \group\{groupid}\vault\record\{recordid}
class WithRecordItemRequestBuilder extends BaseRequestBuilder<WithRecordItemRequestBuilder> {
    ///  The move property
    MoveRequestBuilder get move {
        return MoveRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
     WithRecordItemRequestBuilder clone() {
        return WithRecordItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithRecordItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithRecordItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/vault/record/{recordid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithRecordItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithRecordItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/vault/record/{recordid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Removes the vault record identified by the id. This cannot be undone.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<void> deleteAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the vault record identified by the id. When the 'secret' additonal object is requested, the 'topicus-Vault-session' header must be specified.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<VaultRecord?> getAsync([Function(RequestConfiguration<WithRecordItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<VaultRecord>(requestInfo, VaultRecord.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the vault record identified by the id. To update the secrets, the 'secret' additional object must be used, in addition to specifying the 'topicus-Vault-session' header. When updating a TOTP-secret, make sure to set 'writeTotp' field.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<VaultRecord?> putAsync(VaultRecord body, [Function(RequestConfiguration<WithRecordItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<VaultRecord>(requestInfo, VaultRecord.createFromDiscriminatorValue, errorMapping);
    }
    /// Removes the vault record identified by the id. This cannot be undone.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toDeleteRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Returns the vault record identified by the id. When the 'secret' additonal object is requested, the 'topicus-Vault-session' header must be specified.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithRecordItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithRecordItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithRecordItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Updates the vault record identified by the id. To update the secrets, the 'secret' additional object must be used, in addition to specifying the 'topicus-Vault-session' header. When updating a TOTP-secret, make sure to set 'writeTotp' field.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPutRequestInformation(VaultRecord body, [Function(RequestConfiguration<WithRecordItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithRecordItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithRecordItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=73', body);
        return requestInfo;
    }
}
