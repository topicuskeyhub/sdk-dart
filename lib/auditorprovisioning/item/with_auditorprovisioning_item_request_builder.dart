// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/provisioning/group_on_system.dart';
import './with_auditorprovisioning_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \auditorprovisioning\{auditorprovisioningid}
class WithAuditorprovisioningItemRequestBuilder extends BaseRequestBuilder<WithAuditorprovisioningItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithAuditorprovisioningItemRequestBuilder clone() {
        return WithAuditorprovisioningItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithAuditorprovisioningItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithAuditorprovisioningItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/auditorprovisioning/{auditorprovisioningid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithAuditorprovisioningItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithAuditorprovisioningItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/auditorprovisioning/{auditorprovisioningid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the group on system identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GroupOnSystem?> getAsync([void Function(RequestConfiguration<WithAuditorprovisioningItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupOnSystem>(requestInfo, GroupOnSystem.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the group on system identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithAuditorprovisioningItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithAuditorprovisioningItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithAuditorprovisioningItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=88');
        return requestInfo;
    }
}
