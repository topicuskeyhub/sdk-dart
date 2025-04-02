// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/client/o_auth2_client_permission_linkable_wrapper.dart';
import '../../../models/error_report.dart';
import './item/with_permission_item_request_builder.dart';
import './permission_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \client\{clientid}\permission
class PermissionRequestBuilder extends BaseRequestBuilder<PermissionRequestBuilder> {
    /// Gets an item from the ApiSdk.client.item.permission.item collection
    ///  [permissionid] Unique identifier of the item
    WithPermissionItemRequestBuilder byPermissionid(int permissionid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('permissionid', () => permissionid);
        return WithPermissionItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    PermissionRequestBuilder clone() {
        return PermissionRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [PermissionRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    PermissionRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/{clientid}/permission{?additional*,any*,client*,clientAdministratorGroup*,clientOwnerGroup*,createdAfter*,createdBefore*,exclude*,forGroup*,forSystem*,forSystemContentAdministratorGroup*,forSystemOwnerGroup*,forSystemTechnicalAdministratorGroup*,id*,modifiedSince*,q*,sort*,value*,withPermissionForOwningGroup*,withRequestedPermissionForOwningGroup*}", pathParameters) ;
    /// Instantiates a new [PermissionRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    PermissionRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/{clientid}/permission{?additional*,any*,client*,clientAdministratorGroup*,clientOwnerGroup*,createdAfter*,createdBefore*,exclude*,forGroup*,forSystem*,forSystemContentAdministratorGroup*,forSystemOwnerGroup*,forSystemTechnicalAdministratorGroup*,id*,modifiedSince*,q*,sort*,value*,withPermissionForOwningGroup*,withRequestedPermissionForOwningGroup*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all permissions given to a OAuth2 client in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<OAuth2ClientPermissionLinkableWrapper?> getAsync([void Function(RequestConfiguration<PermissionRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<OAuth2ClientPermissionLinkableWrapper>(requestInfo, OAuth2ClientPermissionLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all permissions given to a OAuth2 client in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<PermissionRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<PermissionRequestBuilderGetQueryParameters>(requestConfiguration, () => PermissionRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=77');
        return requestInfo;
    }
}
