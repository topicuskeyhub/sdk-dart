// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/directory/account_directory.dart';
import '../../models/error_report.dart';
import './internalaccount/internalaccount_request_builder.dart';
import './with_directory_item_request_builder_get_query_parameters.dart';
import './with_directory_item_request_builder_put_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \directory\{directoryid}
class WithDirectoryItemRequestBuilder extends BaseRequestBuilder<WithDirectoryItemRequestBuilder> {
    ///  The internalaccount property
    InternalaccountRequestBuilder get internalaccount {
        return InternalaccountRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithDirectoryItemRequestBuilder clone() {
        return WithDirectoryItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithDirectoryItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithDirectoryItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/directory/{directoryid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithDirectoryItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithDirectoryItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/directory/{directoryid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Permanently removes the directory. This cannot be undone.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the directory identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccountDirectory?> getAsync([void Function(RequestConfiguration<WithDirectoryItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountDirectory>(requestInfo, AccountDirectory.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the directory identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccountDirectory?> putAsync(AccountDirectory body, [void Function(RequestConfiguration<WithDirectoryItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountDirectory>(requestInfo, AccountDirectory.createFromDiscriminatorValue, errorMapping);
    }
    /// Permanently removes the directory. This cannot be undone.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
    /// Returns the directory identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithDirectoryItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithDirectoryItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithDirectoryItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
    /// Updates the directory identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPutRequestInformation(AccountDirectory body, [void Function(RequestConfiguration<WithDirectoryItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithDirectoryItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithDirectoryItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=78', body);
        return requestInfo;
    }
}
