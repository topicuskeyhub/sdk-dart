import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/group/group_folder_linkable_wrapper.dart';
import './groupfolder_request_builder_get_query_parameters.dart';
import './groupfolder_request_builder_post_query_parameters.dart';
import './item/with_groupfolder_item_request_builder.dart';

/// Builds and executes requests for operations under \groupfolder
class GroupfolderRequestBuilder extends BaseRequestBuilder<GroupfolderRequestBuilder> {
    /// Gets an item from the ApiSdk.groupfolder.item collection
    /// <param name="groupfolderid">groupfolderid</param>
    WithGroupfolderItemRequestBuilder byGroupfolderid(int groupfolderid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("groupfolderid", ()=> groupfolderid);
        return WithGroupfolderItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    GroupfolderRequestBuilder clone() {
        return GroupfolderRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [GroupfolderRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    GroupfolderRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/groupfolder{?additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,name*,ownedBy*,q*,sort*}", pathParameters) ;
    /// Instantiates a new [GroupfolderRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    GroupfolderRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/groupfolder{?additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,name*,ownedBy*,q*,sort*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all group folders in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<GroupFolderLinkableWrapper?> getAsync([Function(RequestConfiguration<GroupfolderRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupFolderLinkableWrapper>(requestInfo, GroupFolderLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new group folders and returns the newly created folders.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<GroupFolderLinkableWrapper?> postAsync(GroupFolderLinkableWrapper body, [Function(RequestConfiguration<GroupfolderRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupFolderLinkableWrapper>(requestInfo, GroupFolderLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all group folders in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<GroupfolderRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<GroupfolderRequestBuilderGetQueryParameters>(requestConfiguration, () => GroupfolderRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Creates one or more new group folders and returns the newly created folders.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPostRequestInformation(GroupFolderLinkableWrapper body, [Function(RequestConfiguration<GroupfolderRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<GroupfolderRequestBuilderPostQueryParameters>(requestConfiguration, () => GroupfolderRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
