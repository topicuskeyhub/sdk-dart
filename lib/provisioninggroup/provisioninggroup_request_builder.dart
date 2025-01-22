// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/group/provisioning_group_linkable_wrapper.dart';
import './item/with_provisioninggroup_item_request_builder.dart';
import './provisioninggroup_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \provisioninggroup
class ProvisioninggroupRequestBuilder extends BaseRequestBuilder<ProvisioninggroupRequestBuilder> {
    /// Gets an item from the ApiSdk.provisioninggroup.item collection
    ///  [provisioninggroupid] Unique identifier of the item
    WithProvisioninggroupItemRequestBuilder byProvisioninggroupid(int provisioninggroupid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('provisioninggroupid', () => provisioninggroupid);
        return WithProvisioninggroupItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    ProvisioninggroupRequestBuilder clone() {
        return ProvisioninggroupRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ProvisioninggroupRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ProvisioninggroupRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/provisioninggroup{?activationRequired*,additional*,any*,createdAfter*,createdBefore*,exclude*,group*,groupOnSystem*,groupOnSystemOwnerGroup*,id*,modifiedSince*,q*,sort*,system*,systemAdminGroup*,systemContentAdminGroup*,systemOwnerGroup*}", pathParameters) ;
    /// Instantiates a new [ProvisioninggroupRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ProvisioninggroupRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/provisioninggroup{?activationRequired*,additional*,any*,createdAfter*,createdBefore*,exclude*,group*,groupOnSystem*,groupOnSystemOwnerGroup*,id*,modifiedSince*,q*,sort*,system*,systemAdminGroup*,systemContentAdminGroup*,systemOwnerGroup*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all provisioning groups in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ProvisioningGroupLinkableWrapper?> getAsync([void Function(RequestConfiguration<ProvisioninggroupRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisioningGroupLinkableWrapper>(requestInfo, ProvisioningGroupLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all provisioning groups in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<ProvisioninggroupRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ProvisioninggroupRequestBuilderGetQueryParameters>(requestConfiguration, () => ProvisioninggroupRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=76');
        return requestInfo;
    }
}
