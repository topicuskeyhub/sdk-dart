import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/auth/account_status.dart';
import '../../../models/error_report.dart';

/// Builds and executes requests for operations under \account\{accountid}\status
class StatusRequestBuilder extends BaseRequestBuilder<StatusRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     StatusRequestBuilder clone() {
        return StatusRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [StatusRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     StatusRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/status", pathParameters) ;
    /// Instantiates a new [StatusRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     StatusRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/status", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Updates one or more status toggles for the account. Only the values set will be updated on the account.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<void> putAsync(AccountStatus body, [Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Updates one or more status toggles for the account. Only the values set will be updated on the account.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPutRequestInformation(AccountStatus body, [Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=73', body);
        return requestInfo;
    }
}
