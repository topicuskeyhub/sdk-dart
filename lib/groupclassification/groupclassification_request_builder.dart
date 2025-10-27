// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/group/group_classification_linkable_wrapper.dart';
import './groupclassification_request_builder_get_query_parameters.dart';
import './groupclassification_request_builder_post_query_parameters.dart';
import './item/with_groupclassification_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \groupclassification
class GroupclassificationRequestBuilder extends BaseRequestBuilder<GroupclassificationRequestBuilder> {
    /// Gets an item from the ApiSdk.groupclassification.item collection
    ///  [groupclassificationid] Unique identifier of the item
    WithGroupclassificationItemRequestBuilder byGroupclassificationid(int groupclassificationid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('groupclassificationid', () => groupclassificationid);
        return WithGroupclassificationItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    GroupclassificationRequestBuilder clone() {
        return GroupclassificationRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [GroupclassificationRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GroupclassificationRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/groupclassification{?additional*,any*,createdAfter*,createdBefore*,defaultClassification*,exclude*,id*,modifiedSince*,name*,nameContains*,q*,sort*,uuid*}", pathParameters) ;
    /// Instantiates a new [GroupclassificationRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GroupclassificationRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/groupclassification{?additional*,any*,createdAfter*,createdBefore*,defaultClassification*,exclude*,id*,modifiedSince*,name*,nameContains*,q*,sort*,uuid*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all group classifications in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GroupClassificationLinkableWrapper?> getAsync([void Function(RequestConfiguration<GroupclassificationRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupClassificationLinkableWrapper>(requestInfo, GroupClassificationLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new group classifications and returns the newly created classifications.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GroupClassificationLinkableWrapper?> postAsync(GroupClassificationLinkableWrapper body, [void Function(RequestConfiguration<GroupclassificationRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupClassificationLinkableWrapper>(requestInfo, GroupClassificationLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all group classifications in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<GroupclassificationRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<GroupclassificationRequestBuilderGetQueryParameters>(requestConfiguration, () => GroupclassificationRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=81');
        return requestInfo;
    }
    /// Creates one or more new group classifications and returns the newly created classifications.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(GroupClassificationLinkableWrapper body, [void Function(RequestConfiguration<GroupclassificationRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<GroupclassificationRequestBuilderPostQueryParameters>(requestConfiguration, () => GroupclassificationRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=81');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=81', body);
        return requestInfo;
    }
}
