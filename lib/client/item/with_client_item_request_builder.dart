import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/client/client_application.dart';
import '../../models/error_report.dart';
import './permission/permission_request_builder.dart';
import './vault/vault_request_builder.dart';
import './with_client_item_request_builder_get_query_parameters.dart';
import './with_client_item_request_builder_put_query_parameters.dart';

/// Builds and executes requests for operations under \client\{clientid}
class WithClientItemRequestBuilder extends BaseRequestBuilder<WithClientItemRequestBuilder> {
    ///  The permission property
    PermissionRequestBuilder get permission {
        return PermissionRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The vault property
    VaultRequestBuilder get vault {
        return VaultRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithClientItemRequestBuilder clone() {
        return WithClientItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithClientItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithClientItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/{clientid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithClientItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithClientItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/{clientid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Permanently removes the client identified by the id. This cannot be undone.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<void> deleteAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the client identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<ClientApplication?> getAsync([Function(RequestConfiguration<WithClientItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ClientApplication>(requestInfo, ClientApplication.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the client identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<ClientApplication?> putAsync(ClientApplication body, [Function(RequestConfiguration<WithClientItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ClientApplication>(requestInfo, ClientApplication.createFromDiscriminatorValue, errorMapping);
    }
    /// Permanently removes the client identified by the id. This cannot be undone.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toDeleteRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Returns the client identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithClientItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithClientItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithClientItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Updates the client identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPutRequestInformation(ClientApplication body, [Function(RequestConfiguration<WithClientItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithClientItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithClientItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
