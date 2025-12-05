// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error_report.dart';
import '../../../../../models/vault/vault_record.dart';
import './move/move_request_builder.dart';
import './with_record_item_request_builder_get_query_parameters.dart';
import './with_record_item_request_builder_put_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \client\{clientid}\vault\record\{recordid}
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
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithRecordItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/{clientid}/vault/record/{recordid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithRecordItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithRecordItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/{clientid}/vault/record/{recordid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Removes the vault record identified by the id. This cannot be undone.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the vault record identified by the id. When the 'secret' additonal object is requested, the 'topicus-Vault-session' header must be specified.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<VaultRecord?> getAsync([void Function(RequestConfiguration<WithRecordItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<VaultRecord>(requestInfo, VaultRecord.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the vault record identified by the id. To update the secrets, the 'secret' additional object must be used, in addition to specifying the 'topicus-Vault-session' header. When updating a TOTP-secret, make sure to set 'writeTotp' field.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<VaultRecord?> putAsync(VaultRecord body, [void Function(RequestConfiguration<WithRecordItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<VaultRecord>(requestInfo, VaultRecord.createFromDiscriminatorValue, errorMapping);
    }
    /// Removes the vault record identified by the id. This cannot be undone.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=82');
        return requestInfo;
    }
    /// Returns the vault record identified by the id. When the 'secret' additonal object is requested, the 'topicus-Vault-session' header must be specified.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithRecordItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithRecordItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithRecordItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=82');
        return requestInfo;
    }
    /// Updates the vault record identified by the id. To update the secrets, the 'secret' additional object must be used, in addition to specifying the 'topicus-Vault-session' header. When updating a TOTP-secret, make sure to set 'writeTotp' field.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPutRequestInformation(VaultRecord body, [void Function(RequestConfiguration<WithRecordItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithRecordItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithRecordItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=82');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=82', body);
        return requestInfo;
    }
}
