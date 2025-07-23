// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/group/group_classification.dart';
import './with_groupclassification_item_request_builder_get_query_parameters.dart';
import './with_groupclassification_item_request_builder_put_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \groupclassification\{groupclassificationid}
class WithGroupclassificationItemRequestBuilder extends BaseRequestBuilder<WithGroupclassificationItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithGroupclassificationItemRequestBuilder clone() {
        return WithGroupclassificationItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithGroupclassificationItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithGroupclassificationItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/groupclassification/{groupclassificationid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithGroupclassificationItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithGroupclassificationItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/groupclassification/{groupclassificationid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Deletes the group classification identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the group classification identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GroupClassification?> getAsync([void Function(RequestConfiguration<WithGroupclassificationItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupClassification>(requestInfo, GroupClassification.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the group classification identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GroupClassification?> putAsync(GroupClassification body, [void Function(RequestConfiguration<WithGroupclassificationItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupClassification>(requestInfo, GroupClassification.createFromDiscriminatorValue, errorMapping);
    }
    /// Deletes the group classification identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=79');
        return requestInfo;
    }
    /// Returns the group classification identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithGroupclassificationItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithGroupclassificationItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithGroupclassificationItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=79');
        return requestInfo;
    }
    /// Updates the group classification identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPutRequestInformation(GroupClassification body, [void Function(RequestConfiguration<WithGroupclassificationItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithGroupclassificationItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithGroupclassificationItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=79');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=79', body);
        return requestInfo;
    }
}
