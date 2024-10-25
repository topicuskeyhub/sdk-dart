import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../../models/client/o_auth2_client_permission.dart';
import '../../../../models/error_report.dart';
import './with_permission_item_request_builder_get_query_parameters.dart';

/// Builds and executes requests for operations under \client\{clientid}\permission\{permissionid}
class WithPermissionItemRequestBuilder extends BaseRequestBuilder<WithPermissionItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     WithPermissionItemRequestBuilder clone() {
        return WithPermissionItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithPermissionItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithPermissionItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/{clientid}/permission/{permissionid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithPermissionItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithPermissionItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/{clientid}/permission/{permissionid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Deletes the permission identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<void> deleteAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the permission identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<OAuth2ClientPermission?> getAsync([Function(RequestConfiguration<WithPermissionItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<OAuth2ClientPermission>(requestInfo, OAuth2ClientPermission.createFromDiscriminatorValue, errorMapping);
    }
    /// Deletes the permission identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toDeleteRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Returns the permission identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithPermissionItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithPermissionItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithPermissionItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}
