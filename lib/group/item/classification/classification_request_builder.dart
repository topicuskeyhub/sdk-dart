import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/group/group_classification_update.dart';

/// Builds and executes requests for operations under \group\{groupid}\classification
class ClassificationRequestBuilder extends BaseRequestBuilder<ClassificationRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ClassificationRequestBuilder clone() {
        return ClassificationRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ClassificationRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    ClassificationRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/classification", pathParameters) ;
    /// Instantiates a new [ClassificationRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    ClassificationRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/classification", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Update the classification of the group identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<void> putAsync(GroupClassificationUpdate body, [Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Update the classification of the group identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPutRequestInformation(GroupClassificationUpdate body, [Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
