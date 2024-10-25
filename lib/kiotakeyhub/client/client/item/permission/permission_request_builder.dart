import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/client/o_auth2_client_permission_linkable_wrapper.dart';
import '../../../models/error_report.dart';
import './item/with_permission_item_request_builder.dart';
import './permission_request_builder_get_query_parameters.dart';

/// Builds and executes requests for operations under \client\{clientid}\permission
class PermissionRequestBuilder extends BaseRequestBuilder<PermissionRequestBuilder> {
    /// Gets an item from the ApiSdk.client.item.permission.item collection
    /// <param name="permissionid">permissionid</param>
     WithPermissionItemRequestBuilder byPermissionid(int permissionid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("permissionid", ()=> permissionid);
        return WithPermissionItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
     PermissionRequestBuilder clone() {
        return PermissionRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [PermissionRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     PermissionRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/{clientid}/permission{?additional*,any*,client*,createdAfter*,createdBefore*,exclude*,forGroup*,forSystem*,id*,modifiedSince*,q*,sort*,value*}", pathParameters) ;
    /// Instantiates a new [PermissionRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     PermissionRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/{clientid}/permission{?additional*,any*,client*,createdAfter*,createdBefore*,exclude*,forGroup*,forSystem*,id*,modifiedSince*,q*,sort*,value*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all permissions given to a OAuth2 client in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<OAuth2ClientPermissionLinkableWrapper?> getAsync([Function(RequestConfiguration<PermissionRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<OAuth2ClientPermissionLinkableWrapper>(requestInfo, OAuth2ClientPermissionLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all permissions given to a OAuth2 client in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<PermissionRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<PermissionRequestBuilderGetQueryParameters>(requestConfiguration, () => PermissionRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}
