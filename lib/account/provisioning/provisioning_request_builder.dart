import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/provisioning/provisioning_status.dart';
import './provisioning_request_builder_get_query_parameters.dart';
import './provisioning_request_builder_put_query_parameters.dart';
import './rotatepwd/rotatepwd_request_builder.dart';
import './tokenpwd/tokenpwd_request_builder.dart';

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
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     ProvisioningRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/provisioning{?filter*,groupUuid*,reason*}", pathParameters) ;
    /// Instantiates a new [ProvisioningRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     ProvisioningRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/provisioning{?filter*,groupUuid*,reason*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the status of provisioning for the current user. The groups are filtered by the specified filter or group UUID.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<ProvisioningStatus?> getAsync([Function(RequestConfiguration<ProvisioningRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisioningStatus>(requestInfo, ProvisioningStatus.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the provisioning for the current user. This updates the end time for the given groups. If 'ignoreErrors' is set, errors do not cause the update to abort if errors are detected. To enable groups with auditing enabled the reason query parameter is required.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<ProvisioningStatus?> putAsync(ProvisioningStatus body, [Function(RequestConfiguration<ProvisioningRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisioningStatus>(requestInfo, ProvisioningStatus.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the status of provisioning for the current user. The groups are filtered by the specified filter or group UUID.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<ProvisioningRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ProvisioningRequestBuilderGetQueryParameters>(requestConfiguration, () => ProvisioningRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Updates the provisioning for the current user. This updates the end time for the given groups. If 'ignoreErrors' is set, errors do not cause the update to abort if errors are detected. To enable groups with auditing enabled the reason query parameter is required.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPutRequestInformation(ProvisioningStatus body, [Function(RequestConfiguration<ProvisioningRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ProvisioningRequestBuilderPutQueryParameters>(requestConfiguration, () => ProvisioningRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=73', body);
        return requestInfo;
    }
}
