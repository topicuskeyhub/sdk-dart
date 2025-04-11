// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/vault/vault.dart';
import './newpassword/newpassword_request_builder.dart';
import './random/random_request_builder.dart';
import './record/record_request_builder.dart';
import './recover/recover_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \account\{accountid}\vault
class VaultRequestBuilder extends BaseRequestBuilder<VaultRequestBuilder> {
    ///  The newpassword property
    NewpasswordRequestBuilder get newpassword {
        return NewpasswordRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The random property
    RandomRequestBuilder get random {
        return RandomRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The record property
    RecordRequestBuilder get record {
        return RecordRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The recover property
    RecoverRequestBuilder get recover {
        return RecoverRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    VaultRequestBuilder clone() {
        return VaultRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [VaultRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    VaultRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/vault", pathParameters) ;
    /// Instantiates a new [VaultRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    VaultRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/vault", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Delete the personal vault of the current user.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the vault. It is not possible to read the secrets, for this the records need to be read one by one.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<Vault?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<Vault>(requestInfo, Vault.createFromDiscriminatorValue, errorMapping);
    }
    /// Delete the personal vault of the current user.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
    /// Returns the vault. It is not possible to read the secrets, for this the records need to be read one by one.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
}
