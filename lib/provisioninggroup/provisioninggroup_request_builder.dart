import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/group/provisioning_group_linkable_wrapper.dart';
import './item/with_provisioninggroup_item_request_builder.dart';
import './provisioninggroup_request_builder_get_query_parameters.dart';

/// Builds and executes requests for operations under \provisioninggroup
class ProvisioninggroupRequestBuilder extends BaseRequestBuilder<ProvisioninggroupRequestBuilder> {
    /// Gets an item from the ApiSdk.provisioninggroup.item collection
    /// <param name="provisioninggroupid">provisioninggroupid</param>
    WithProvisioninggroupItemRequestBuilder byProvisioninggroupid(int provisioninggroupid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("provisioninggroupid", ()=> provisioninggroupid);
        return WithProvisioninggroupItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    ProvisioninggroupRequestBuilder clone() {
        return ProvisioninggroupRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ProvisioninggroupRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    ProvisioninggroupRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/provisioninggroup{?activationRequired*,additional*,any*,createdAfter*,createdBefore*,exclude*,group*,groupOnSystem*,groupOnSystemOwnerGroup*,id*,modifiedSince*,q*,sort*,system*,systemAdminGroup*,systemContentAdminGroup*,systemOwnerGroup*}", pathParameters) ;
    /// Instantiates a new [ProvisioninggroupRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    ProvisioninggroupRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/provisioninggroup{?activationRequired*,additional*,any*,createdAfter*,createdBefore*,exclude*,group*,groupOnSystem*,groupOnSystemOwnerGroup*,id*,modifiedSince*,q*,sort*,system*,systemAdminGroup*,systemContentAdminGroup*,systemOwnerGroup*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all provisioning groups in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<ProvisioningGroupLinkableWrapper?> getAsync([Function(RequestConfiguration<ProvisioninggroupRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisioningGroupLinkableWrapper>(requestInfo, ProvisioningGroupLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all provisioning groups in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<ProvisioninggroupRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ProvisioninggroupRequestBuilderGetQueryParameters>(requestConfiguration, () => ProvisioninggroupRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}
