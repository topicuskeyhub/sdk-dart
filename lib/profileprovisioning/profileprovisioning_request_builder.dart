import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/profile/access_profile_provisioning_linkable_wrapper.dart';
import './item/with_profileprovisioning_item_request_builder.dart';
import './profileprovisioning_request_builder_get_query_parameters.dart';

/// Builds and executes requests for operations under \profileprovisioning
class ProfileprovisioningRequestBuilder extends BaseRequestBuilder<ProfileprovisioningRequestBuilder> {
    /// Gets an item from the ApiSdk.profileprovisioning.item collection
    /// <param name="profileprovisioningid">profileprovisioningid</param>
    WithProfileprovisioningItemRequestBuilder byProfileprovisioningid(int profileprovisioningid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("profileprovisioningid", ()=> profileprovisioningid);
        return WithProfileprovisioningItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    ProfileprovisioningRequestBuilder clone() {
        return ProfileprovisioningRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ProfileprovisioningRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    ProfileprovisioningRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profileprovisioning{?accessProfile*,additional*,any*,createdAfter*,createdBefore*,exclude*,groupOnSystem*,groupOnSystemOwnerGroup*,id*,modifiedSince*,ownedBy*,q*,sort*,system*,systemAdminGroup*,systemContentAdminGroup*,systemOwnerGroup*}", pathParameters) ;
    /// Instantiates a new [ProfileprovisioningRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    ProfileprovisioningRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profileprovisioning{?accessProfile*,additional*,any*,createdAfter*,createdBefore*,exclude*,groupOnSystem*,groupOnSystemOwnerGroup*,id*,modifiedSince*,ownedBy*,q*,sort*,system*,systemAdminGroup*,systemContentAdminGroup*,systemOwnerGroup*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all access profile provisioning links in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<AccessProfileProvisioningLinkableWrapper?> getAsync([Function(RequestConfiguration<ProfileprovisioningRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileProvisioningLinkableWrapper>(requestInfo, AccessProfileProvisioningLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all access profile provisioning links in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<ProfileprovisioningRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ProfileprovisioningRequestBuilderGetQueryParameters>(requestConfiguration, () => ProfileprovisioningRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}
