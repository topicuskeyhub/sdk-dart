// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/profile/access_profile_provisioning.dart';
import './with_profileprovisioning_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \profileprovisioning\{profileprovisioningid}
class WithProfileprovisioningItemRequestBuilder extends BaseRequestBuilder<WithProfileprovisioningItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithProfileprovisioningItemRequestBuilder clone() {
        return WithProfileprovisioningItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithProfileprovisioningItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithProfileprovisioningItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profileprovisioning/{profileprovisioningid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithProfileprovisioningItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithProfileprovisioningItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profileprovisioning/{profileprovisioningid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Deletes the access profile provisioning link identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the access profile provisioning link identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccessProfileProvisioning?> getAsync([void Function(RequestConfiguration<WithProfileprovisioningItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileProvisioning>(requestInfo, AccessProfileProvisioning.createFromDiscriminatorValue, errorMapping);
    }
    /// Deletes the access profile provisioning link identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Returns the access profile provisioning link identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithProfileprovisioningItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithProfileprovisioningItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithProfileprovisioningItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}
