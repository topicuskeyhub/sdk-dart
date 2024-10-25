import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/group/group_classification_linkable_wrapper.dart';
import './groupclassification_request_builder_get_query_parameters.dart';
import './groupclassification_request_builder_post_query_parameters.dart';
import './item/with_groupclassification_item_request_builder.dart';

/// Builds and executes requests for operations under \groupclassification
class GroupclassificationRequestBuilder extends BaseRequestBuilder<GroupclassificationRequestBuilder> {
    /// Gets an item from the ApiSdk.groupclassification.item collection
    /// <param name="groupclassificationid">groupclassificationid</param>
     WithGroupclassificationItemRequestBuilder byGroupclassificationid(int groupclassificationid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("groupclassificationid", ()=> groupclassificationid);
        return WithGroupclassificationItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
     GroupclassificationRequestBuilder clone() {
        return GroupclassificationRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [GroupclassificationRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     GroupclassificationRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/groupclassification{?additional*,any*,createdAfter*,createdBefore*,defaultClassification*,exclude*,id*,modifiedSince*,name*,nameContains*,q*,sort*,uuid*}", pathParameters) ;
    /// Instantiates a new [GroupclassificationRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     GroupclassificationRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/groupclassification{?additional*,any*,createdAfter*,createdBefore*,defaultClassification*,exclude*,id*,modifiedSince*,name*,nameContains*,q*,sort*,uuid*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all group classifications in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<GroupClassificationLinkableWrapper?> getAsync([Function(RequestConfiguration<GroupclassificationRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupClassificationLinkableWrapper>(requestInfo, GroupClassificationLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new group classifications and returns the newly created classifications.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<GroupClassificationLinkableWrapper?> postAsync(GroupClassificationLinkableWrapper body, [Function(RequestConfiguration<GroupclassificationRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupClassificationLinkableWrapper>(requestInfo, GroupClassificationLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all group classifications in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<GroupclassificationRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<GroupclassificationRequestBuilderGetQueryParameters>(requestConfiguration, () => GroupclassificationRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Creates one or more new group classifications and returns the newly created classifications.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPostRequestInformation(GroupClassificationLinkableWrapper body, [Function(RequestConfiguration<GroupclassificationRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<GroupclassificationRequestBuilderPostQueryParameters>(requestConfiguration, () => GroupclassificationRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=73', body);
        return requestInfo;
    }
}
