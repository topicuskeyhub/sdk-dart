// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/request/modification_request_linkable_wrapper.dart';
import './item/with_request_item_request_builder.dart';
import './report/report_request_builder.dart';
import './request_request_builder_get_query_parameters.dart';
import './request_request_builder_post_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \request
class RequestRequestBuilder extends BaseRequestBuilder<RequestRequestBuilder> {
    ///  The report property
    ReportRequestBuilder get report {
        return ReportRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the ApiSdk.request.item collection
    ///  [requestid] Unique identifier of the item
    WithRequestItemRequestBuilder byRequestid(int requestid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('requestid', () => requestid);
        return WithRequestItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    RequestRequestBuilder clone() {
        return RequestRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RequestRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RequestRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/request{?accessProfile*,accountToUpdate*,additional*,adminToRevoke*,any*,application*,authorizationType*,authorizingGroupType*,clientPermission*,connectAuthorization*,createdAfter*,createdBefore*,directory*,exclude*,grantGroupOnSystemRequestActivationRequired*,grantGroupOnSystemRequestRequestActivationRequired*,group*,groupOnSystem*,groupsOverlapWith*,id*,internalAccount*,mailKey*,modifiedSince*,newAdmin*,newGroupName*,newGroupOnSystemName*,newNamespaceName*,newServiceAccountName*,organizationalUnit*,ownerGroup*,precededBy*,processedBy*,q*,requestedBy*,requestingGroup*,serviceAccount*,sort*,status*,system*,triggeredFollowUpRequest*,type*,updateGroupMembershipType*,wasProcessedBy*}", pathParameters) ;
    /// Instantiates a new [RequestRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RequestRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/request{?accessProfile*,accountToUpdate*,additional*,adminToRevoke*,any*,application*,authorizationType*,authorizingGroupType*,clientPermission*,connectAuthorization*,createdAfter*,createdBefore*,directory*,exclude*,grantGroupOnSystemRequestActivationRequired*,grantGroupOnSystemRequestRequestActivationRequired*,group*,groupOnSystem*,groupsOverlapWith*,id*,internalAccount*,mailKey*,modifiedSince*,newAdmin*,newGroupName*,newGroupOnSystemName*,newNamespaceName*,newServiceAccountName*,organizationalUnit*,ownerGroup*,precededBy*,processedBy*,q*,requestedBy*,requestingGroup*,serviceAccount*,sort*,status*,system*,triggeredFollowUpRequest*,type*,updateGroupMembershipType*,wasProcessedBy*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Queries over all modification requests. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ModificationRequestLinkableWrapper?> getAsync([void Function(RequestConfiguration<RequestRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ModificationRequestLinkableWrapper>(requestInfo, ModificationRequestLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new modification requests and returns the newly created requests.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ModificationRequestLinkableWrapper?> postAsync(ModificationRequestLinkableWrapper body, [void Function(RequestConfiguration<RequestRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ModificationRequestLinkableWrapper>(requestInfo, ModificationRequestLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Queries over all modification requests. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<RequestRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<RequestRequestBuilderGetQueryParameters>(requestConfiguration, () => RequestRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=82');
        return requestInfo;
    }
    /// Creates one or more new modification requests and returns the newly created requests.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(ModificationRequestLinkableWrapper body, [void Function(RequestConfiguration<RequestRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<RequestRequestBuilderPostQueryParameters>(requestConfiguration, () => RequestRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=82');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=82', body);
        return requestInfo;
    }
}
