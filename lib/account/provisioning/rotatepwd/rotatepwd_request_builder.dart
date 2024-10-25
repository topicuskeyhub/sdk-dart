import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/provisioning/account_provisioning_status_report.dart';

/// Builds and executes requests for operations under \account\provisioning\rotatepwd
class RotatepwdRequestBuilder extends BaseRequestBuilder<RotatepwdRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     RotatepwdRequestBuilder clone() {
        return RotatepwdRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RotatepwdRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     RotatepwdRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/provisioning/rotatepwd", pathParameters) ;
    /// Instantiates a new [RotatepwdRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     RotatepwdRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/provisioning/rotatepwd", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Manually rotates the user's rotating password. This is normally done once a day automatically.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<AccountProvisioningStatusReport?> postAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountProvisioningStatusReport>(requestInfo, AccountProvisioningStatusReport.createFromDiscriminatorValue, errorMapping);
    }
    /// Manually rotates the user's rotating password. This is normally done once a day automatically.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPostRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}
