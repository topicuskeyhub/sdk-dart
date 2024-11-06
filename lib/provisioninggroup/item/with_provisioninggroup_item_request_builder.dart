import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/group/provisioning_group.dart';
import './with_provisioninggroup_item_request_builder_get_query_parameters.dart';
import './with_provisioninggroup_item_request_builder_put_query_parameters.dart';

/// Builds and executes requests for operations under \provisioninggroup\{provisioninggroupid}
class WithProvisioninggroupItemRequestBuilder extends BaseRequestBuilder<WithProvisioninggroupItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithProvisioninggroupItemRequestBuilder clone() {
        return WithProvisioninggroupItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithProvisioninggroupItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithProvisioninggroupItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/provisioninggroup/{provisioninggroupid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithProvisioninggroupItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithProvisioninggroupItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/provisioninggroup/{provisioninggroupid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Deletes the provisioning group identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<void> deleteAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the provisioning group identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<ProvisioningGroup?> getAsync([Function(RequestConfiguration<WithProvisioninggroupItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisioningGroup>(requestInfo, ProvisioningGroup.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the provisioning group identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<ProvisioningGroup?> putAsync(ProvisioningGroup body, [Function(RequestConfiguration<WithProvisioninggroupItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisioningGroup>(requestInfo, ProvisioningGroup.createFromDiscriminatorValue, errorMapping);
    }
    /// Deletes the provisioning group identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toDeleteRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Returns the provisioning group identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithProvisioninggroupItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithProvisioninggroupItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithProvisioninggroupItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Updates the provisioning group identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPutRequestInformation(ProvisioningGroup body, [Function(RequestConfiguration<WithProvisioninggroupItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithProvisioninggroupItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithProvisioninggroupItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
