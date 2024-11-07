import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../../../models/error_report.dart';
import '../../../../../models/group/group_account_nesting.dart';

/// Builds and executes requests for operations under \group\{groupid}\account\{accountid}\nesting
class NestingRequestBuilder extends BaseRequestBuilder<NestingRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    NestingRequestBuilder clone() {
        return NestingRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [NestingRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    NestingRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/account/{accountid}/nesting", pathParameters) ;
    /// Instantiates a new [NestingRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    NestingRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/account/{accountid}/nesting", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Updates the nesting status of a group membership.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<void> putAsync(GroupAccountNesting body, [Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Updates the nesting status of a group membership.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPutRequestInformation(GroupAccountNesting body, [Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
