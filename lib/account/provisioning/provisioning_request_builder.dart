// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/provisioning/provisioning_status.dart';
import './provisioning_request_builder_get_query_parameters.dart';
import './provisioning_request_builder_put_query_parameters.dart';
import './rotatepwd/rotatepwd_request_builder.dart';
import './tokenpwd/tokenpwd_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \account\provisioning
class ProvisioningRequestBuilder extends BaseRequestBuilder<ProvisioningRequestBuilder> {
    ///  The rotatepwd property
    RotatepwdRequestBuilder get rotatepwd {
        return RotatepwdRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The tokenpwd property
    TokenpwdRequestBuilder get tokenpwd {
        return TokenpwdRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    ProvisioningRequestBuilder clone() {
        return ProvisioningRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ProvisioningRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ProvisioningRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/provisioning{?filter*,groupUuid*,reason*}", pathParameters) ;
    /// Instantiates a new [ProvisioningRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ProvisioningRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/provisioning{?filter*,groupUuid*,reason*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the status of provisioning for the current user. The groups are filtered by the specified filter or group UUID.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ProvisioningStatus?> getAsync([void Function(RequestConfiguration<ProvisioningRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisioningStatus>(requestInfo, ProvisioningStatus.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the provisioning for the current user. This updates the end time for the given groups. If 'ignoreErrors' is set, errors do not cause the update to abort if errors are detected. To enable groups with auditing enabled the reason query parameter is required.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ProvisioningStatus?> putAsync(ProvisioningStatus body, [void Function(RequestConfiguration<ProvisioningRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisioningStatus>(requestInfo, ProvisioningStatus.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the status of provisioning for the current user. The groups are filtered by the specified filter or group UUID.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<ProvisioningRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ProvisioningRequestBuilderGetQueryParameters>(requestConfiguration, () => ProvisioningRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=75');
        return requestInfo;
    }
    /// Updates the provisioning for the current user. This updates the end time for the given groups. If 'ignoreErrors' is set, errors do not cause the update to abort if errors are detected. To enable groups with auditing enabled the reason query parameter is required.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPutRequestInformation(ProvisioningStatus body, [void Function(RequestConfiguration<ProvisioningRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ProvisioningRequestBuilderPutQueryParameters>(requestConfiguration, () => ProvisioningRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=75');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=75', body);
        return requestInfo;
    }
}
