import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/vault/vault.dart';
import './newpassword/newpassword_request_builder.dart';
import './random/random_request_builder.dart';
import './record/record_request_builder.dart';
import './recover/recover_request_builder.dart';

/// Builds and executes requests for operations under \client\{clientid}\vault
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
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    VaultRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/{clientid}/vault", pathParameters) ;
    /// Instantiates a new [VaultRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    VaultRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/{clientid}/vault", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Delete the personal vault of the current user.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<void> deleteAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the vault. It is not possible to read the secrets, for this the records need to be read one by one.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<Vault?> getAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<Vault>(requestInfo, Vault.createFromDiscriminatorValue, errorMapping);
    }
    /// Delete the personal vault of the current user.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toDeleteRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Returns the vault. It is not possible to read the secrets, for this the records need to be read one by one.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}
