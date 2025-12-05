// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/provisioning/account_provisioning_status_report.dart';

/// auto generated
/// Builds and executes requests for operations under \account\provisioning\rotatepwd
class RotatepwdRequestBuilder extends BaseRequestBuilder<RotatepwdRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RotatepwdRequestBuilder clone() {
        return RotatepwdRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RotatepwdRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RotatepwdRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/provisioning/rotatepwd", pathParameters) ;
    /// Instantiates a new [RotatepwdRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RotatepwdRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/provisioning/rotatepwd", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Manually rotates the user's rotating password. This is normally done once a day automatically.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccountProvisioningStatusReport?> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountProvisioningStatusReport>(requestInfo, AccountProvisioningStatusReport.createFromDiscriminatorValue, errorMapping);
    }
    /// Manually rotates the user's rotating password. This is normally done once a day automatically.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=82');
        return requestInfo;
    }
}
