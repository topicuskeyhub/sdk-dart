// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/profile/access_profile_provisioning_linkable_wrapper.dart';
import './item/with_profileprovisioning_item_request_builder.dart';
import './profileprovisioning_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \profileprovisioning
class ProfileprovisioningRequestBuilder extends BaseRequestBuilder<ProfileprovisioningRequestBuilder> {
    /// Gets an item from the ApiSdk.profileprovisioning.item collection
    ///  [profileprovisioningid] Unique identifier of the item
    WithProfileprovisioningItemRequestBuilder byProfileprovisioningid(int profileprovisioningid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('profileprovisioningid', () => profileprovisioningid);
        return WithProfileprovisioningItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    ProfileprovisioningRequestBuilder clone() {
        return ProfileprovisioningRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ProfileprovisioningRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ProfileprovisioningRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profileprovisioning{?accessProfile*,additional*,any*,createdAfter*,createdBefore*,exclude*,groupOnSystem*,groupOnSystemOwnerGroup*,id*,modifiedSince*,ownedBy*,q*,sort*,system*,systemAdminGroup*,systemContentAdminGroup*,systemOwnerGroup*}", pathParameters) ;
    /// Instantiates a new [ProfileprovisioningRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ProfileprovisioningRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profileprovisioning{?accessProfile*,additional*,any*,createdAfter*,createdBefore*,exclude*,groupOnSystem*,groupOnSystemOwnerGroup*,id*,modifiedSince*,ownedBy*,q*,sort*,system*,systemAdminGroup*,systemContentAdminGroup*,systemOwnerGroup*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all access profile provisioning links in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccessProfileProvisioningLinkableWrapper?> getAsync([void Function(RequestConfiguration<ProfileprovisioningRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileProvisioningLinkableWrapper>(requestInfo, AccessProfileProvisioningLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all access profile provisioning links in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<ProfileprovisioningRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ProfileprovisioningRequestBuilderGetQueryParameters>(requestConfiguration, () => ProfileprovisioningRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=80');
        return requestInfo;
    }
}
