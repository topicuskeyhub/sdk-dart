// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/group/group_folder.dart';
import './with_groupfolder_item_request_builder_get_query_parameters.dart';
import './with_groupfolder_item_request_builder_put_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \groupfolder\{groupfolderid}
class WithGroupfolderItemRequestBuilder extends BaseRequestBuilder<WithGroupfolderItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithGroupfolderItemRequestBuilder clone() {
        return WithGroupfolderItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithGroupfolderItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithGroupfolderItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/groupfolder/{groupfolderid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithGroupfolderItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithGroupfolderItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/groupfolder/{groupfolderid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Permanently removes the group folder. This cannot be undone.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the group folder identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GroupFolder?> getAsync([void Function(RequestConfiguration<WithGroupfolderItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupFolder>(requestInfo, GroupFolder.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the group folder identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GroupFolder?> putAsync(GroupFolder body, [void Function(RequestConfiguration<WithGroupfolderItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupFolder>(requestInfo, GroupFolder.createFromDiscriminatorValue, errorMapping);
    }
    /// Permanently removes the group folder. This cannot be undone.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
    /// Returns the group folder identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithGroupfolderItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithGroupfolderItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithGroupfolderItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
    /// Updates the group folder identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPutRequestInformation(GroupFolder body, [void Function(RequestConfiguration<WithGroupfolderItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithGroupfolderItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithGroupfolderItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=78', body);
        return requestInfo;
    }
}
