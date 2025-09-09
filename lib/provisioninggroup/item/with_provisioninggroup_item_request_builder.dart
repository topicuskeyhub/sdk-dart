// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/group/provisioning_group.dart';
import './with_provisioninggroup_item_request_builder_get_query_parameters.dart';
import './with_provisioninggroup_item_request_builder_put_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \provisioninggroup\{provisioninggroupid}
class WithProvisioninggroupItemRequestBuilder extends BaseRequestBuilder<WithProvisioninggroupItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithProvisioninggroupItemRequestBuilder clone() {
        return WithProvisioninggroupItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithProvisioninggroupItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithProvisioninggroupItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/provisioninggroup/{provisioninggroupid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithProvisioninggroupItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithProvisioninggroupItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/provisioninggroup/{provisioninggroupid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Deletes the provisioning group identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the provisioning group identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ProvisioningGroup?> getAsync([void Function(RequestConfiguration<WithProvisioninggroupItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisioningGroup>(requestInfo, ProvisioningGroup.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the provisioning group identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ProvisioningGroup?> putAsync(ProvisioningGroup body, [void Function(RequestConfiguration<WithProvisioninggroupItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisioningGroup>(requestInfo, ProvisioningGroup.createFromDiscriminatorValue, errorMapping);
    }
    /// Deletes the provisioning group identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=80');
        return requestInfo;
    }
    /// Returns the provisioning group identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithProvisioninggroupItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithProvisioninggroupItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithProvisioninggroupItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=80');
        return requestInfo;
    }
    /// Updates the provisioning group identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPutRequestInformation(ProvisioningGroup body, [void Function(RequestConfiguration<WithProvisioninggroupItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithProvisioninggroupItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithProvisioninggroupItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=80');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=80', body);
        return requestInfo;
    }
}
