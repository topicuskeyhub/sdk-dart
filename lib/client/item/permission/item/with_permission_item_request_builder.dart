// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/client/o_auth2_client_permission.dart';
import '../../../../models/error_report.dart';
import './with_permission_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \client\{clientid}\permission\{permissionid}
class WithPermissionItemRequestBuilder extends BaseRequestBuilder<WithPermissionItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithPermissionItemRequestBuilder clone() {
        return WithPermissionItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithPermissionItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithPermissionItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/{clientid}/permission/{permissionid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithPermissionItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithPermissionItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/{clientid}/permission/{permissionid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Deletes the permission identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the permission identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<OAuth2ClientPermission?> getAsync([void Function(RequestConfiguration<WithPermissionItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<OAuth2ClientPermission>(requestInfo, OAuth2ClientPermission.createFromDiscriminatorValue, errorMapping);
    }
    /// Deletes the permission identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
    /// Returns the permission identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithPermissionItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithPermissionItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithPermissionItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
}
