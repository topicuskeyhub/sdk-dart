import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/group/group_classification.dart';
import './with_groupclassification_item_request_builder_get_query_parameters.dart';
import './with_groupclassification_item_request_builder_put_query_parameters.dart';

/// Builds and executes requests for operations under \groupclassification\{groupclassificationid}
class WithGroupclassificationItemRequestBuilder extends BaseRequestBuilder<WithGroupclassificationItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithGroupclassificationItemRequestBuilder clone() {
        return WithGroupclassificationItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithGroupclassificationItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithGroupclassificationItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/groupclassification/{groupclassificationid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithGroupclassificationItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithGroupclassificationItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/groupclassification/{groupclassificationid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Deletes the group classification identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<void> deleteAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the group classification identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<GroupClassification?> getAsync([Function(RequestConfiguration<WithGroupclassificationItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupClassification>(requestInfo, GroupClassification.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the group classification identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<GroupClassification?> putAsync(GroupClassification body, [Function(RequestConfiguration<WithGroupclassificationItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupClassification>(requestInfo, GroupClassification.createFromDiscriminatorValue, errorMapping);
    }
    /// Deletes the group classification identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toDeleteRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Returns the group classification identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithGroupclassificationItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithGroupclassificationItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithGroupclassificationItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Updates the group classification identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPutRequestInformation(GroupClassification body, [Function(RequestConfiguration<WithGroupclassificationItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithGroupclassificationItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithGroupclassificationItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
