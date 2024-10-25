import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/profile/access_profile_provisioning.dart';
import './with_profileprovisioning_item_request_builder_get_query_parameters.dart';

/// Builds and executes requests for operations under \profileprovisioning\{profileprovisioningid}
class WithProfileprovisioningItemRequestBuilder extends BaseRequestBuilder<WithProfileprovisioningItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     WithProfileprovisioningItemRequestBuilder clone() {
        return WithProfileprovisioningItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithProfileprovisioningItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithProfileprovisioningItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profileprovisioning/{profileprovisioningid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithProfileprovisioningItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithProfileprovisioningItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profileprovisioning/{profileprovisioningid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Deletes the access profile provisioning link identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<void> deleteAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the access profile provisioning link identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<AccessProfileProvisioning?> getAsync([Function(RequestConfiguration<WithProfileprovisioningItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileProvisioning>(requestInfo, AccessProfileProvisioning.createFromDiscriminatorValue, errorMapping);
    }
    /// Deletes the access profile provisioning link identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toDeleteRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Returns the access profile provisioning link identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithProfileprovisioningItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithProfileprovisioningItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithProfileprovisioningItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}
