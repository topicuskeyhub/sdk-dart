// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/group/group_folder_linkable_wrapper.dart';
import './groupfolder_request_builder_get_query_parameters.dart';
import './groupfolder_request_builder_post_query_parameters.dart';
import './item/with_groupfolder_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \groupfolder
class GroupfolderRequestBuilder extends BaseRequestBuilder<GroupfolderRequestBuilder> {
    /// Gets an item from the ApiSdk.groupfolder.item collection
    ///  [groupfolderid] Unique identifier of the item
    WithGroupfolderItemRequestBuilder byGroupfolderid(int groupfolderid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('groupfolderid', () => groupfolderid);
        return WithGroupfolderItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    GroupfolderRequestBuilder clone() {
        return GroupfolderRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [GroupfolderRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GroupfolderRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/groupfolder{?additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,name*,ownedBy*,q*,sort*}", pathParameters) ;
    /// Instantiates a new [GroupfolderRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GroupfolderRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/groupfolder{?additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,name*,ownedBy*,q*,sort*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all group folders in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GroupFolderLinkableWrapper?> getAsync([void Function(RequestConfiguration<GroupfolderRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupFolderLinkableWrapper>(requestInfo, GroupFolderLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new group folders and returns the newly created folders.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GroupFolderLinkableWrapper?> postAsync(GroupFolderLinkableWrapper body, [void Function(RequestConfiguration<GroupfolderRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupFolderLinkableWrapper>(requestInfo, GroupFolderLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all group folders in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<GroupfolderRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<GroupfolderRequestBuilderGetQueryParameters>(requestConfiguration, () => GroupfolderRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=76');
        return requestInfo;
    }
    /// Creates one or more new group folders and returns the newly created folders.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(GroupFolderLinkableWrapper body, [void Function(RequestConfiguration<GroupfolderRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<GroupfolderRequestBuilderPostQueryParameters>(requestConfiguration, () => GroupfolderRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=76');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=76', body);
        return requestInfo;
    }
}
