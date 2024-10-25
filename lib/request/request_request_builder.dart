import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/request/modification_request_linkable_wrapper.dart';
import './item/with_request_item_request_builder.dart';
import './report/report_request_builder.dart';
import './request_request_builder_get_query_parameters.dart';
import './request_request_builder_post_query_parameters.dart';

/// Builds and executes requests for operations under \request
class RequestRequestBuilder extends BaseRequestBuilder<RequestRequestBuilder> {
    ///  The report property
    ReportRequestBuilder get report {
        return ReportRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the ApiSdk.request.item collection
    /// <param name="requestid">requestid</param>
     WithRequestItemRequestBuilder byRequestid(int requestid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("requestid", ()=> requestid);
        return WithRequestItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
     RequestRequestBuilder clone() {
        return RequestRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RequestRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     RequestRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/request{?accessProfile*,accountToUpdate*,additional*,adminToRevoke*,any*,application*,authorizationType*,authorizingGroupType*,clientPermission*,connectAuthorization*,createdAfter*,createdBefore*,directory*,exclude*,group*,groupOnSystem*,groupsOverlapWith*,id*,internalAccount*,mailKey*,modifiedSince*,newAdmin*,newGroupName*,newGroupOnSystemName*,newNamespaceName*,newServiceAccountName*,organizationalUnit*,ownerGroup*,precededBy*,processedBy*,q*,requestedBy*,requestingGroup*,serviceAccount*,sort*,status*,system*,triggeredFollowUpRequest*,type*,updateGroupMembershipType*,wasProcessedBy*}", pathParameters) ;
    /// Instantiates a new [RequestRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     RequestRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/request{?accessProfile*,accountToUpdate*,additional*,adminToRevoke*,any*,application*,authorizationType*,authorizingGroupType*,clientPermission*,connectAuthorization*,createdAfter*,createdBefore*,directory*,exclude*,group*,groupOnSystem*,groupsOverlapWith*,id*,internalAccount*,mailKey*,modifiedSince*,newAdmin*,newGroupName*,newGroupOnSystemName*,newNamespaceName*,newServiceAccountName*,organizationalUnit*,ownerGroup*,precededBy*,processedBy*,q*,requestedBy*,requestingGroup*,serviceAccount*,sort*,status*,system*,triggeredFollowUpRequest*,type*,updateGroupMembershipType*,wasProcessedBy*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Queries over all modification requests. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<ModificationRequestLinkableWrapper?> getAsync([Function(RequestConfiguration<RequestRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ModificationRequestLinkableWrapper>(requestInfo, ModificationRequestLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new modification requests and returns the newly created requests.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<ModificationRequestLinkableWrapper?> postAsync(ModificationRequestLinkableWrapper body, [Function(RequestConfiguration<RequestRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ModificationRequestLinkableWrapper>(requestInfo, ModificationRequestLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Queries over all modification requests. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<RequestRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<RequestRequestBuilderGetQueryParameters>(requestConfiguration, () => RequestRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Creates one or more new modification requests and returns the newly created requests.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPostRequestInformation(ModificationRequestLinkableWrapper body, [Function(RequestConfiguration<RequestRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<RequestRequestBuilderPostQueryParameters>(requestConfiguration, () => RequestRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=73', body);
        return requestInfo;
    }
}
