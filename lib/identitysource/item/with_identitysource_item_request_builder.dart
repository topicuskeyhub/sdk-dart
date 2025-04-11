// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/identitysource/identity_source.dart';
import './sync_/sync_request_builder.dart';
import './with_identitysource_item_request_builder_get_query_parameters.dart';
import './with_identitysource_item_request_builder_put_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \identitysource\{identitysourceid}
class WithIdentitysourceItemRequestBuilder extends BaseRequestBuilder<WithIdentitysourceItemRequestBuilder> {
    ///  The sync property
    SyncRequestBuilder get sync_ {
        return SyncRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithIdentitysourceItemRequestBuilder clone() {
        return WithIdentitysourceItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithIdentitysourceItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithIdentitysourceItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/identitysource/{identitysourceid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithIdentitysourceItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithIdentitysourceItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/identitysource/{identitysourceid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Permanently removes the identity source identified by the id. This cannot be undone.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the identity source identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<IdentitySource?> getAsync([void Function(RequestConfiguration<WithIdentitysourceItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<IdentitySource>(requestInfo, IdentitySource.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the identity source identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<IdentitySource?> putAsync(IdentitySource body, [void Function(RequestConfiguration<WithIdentitysourceItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<IdentitySource>(requestInfo, IdentitySource.createFromDiscriminatorValue, errorMapping);
    }
    /// Permanently removes the identity source identified by the id. This cannot be undone.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
    /// Returns the identity source identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithIdentitysourceItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithIdentitysourceItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithIdentitysourceItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
    /// Updates the identity source identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPutRequestInformation(IdentitySource body, [void Function(RequestConfiguration<WithIdentitysourceItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithIdentitysourceItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithIdentitysourceItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=78', body);
        return requestInfo;
    }
}
