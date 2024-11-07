import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/directory/account_directory.dart';
import '../../models/error_report.dart';
import './internalaccount/internalaccount_request_builder.dart';
import './with_directory_item_request_builder_get_query_parameters.dart';
import './with_directory_item_request_builder_put_query_parameters.dart';

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
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithDirectoryItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/directory/{directoryid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithDirectoryItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithDirectoryItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/directory/{directoryid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Permanently removes the directory. This cannot be undone.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<void> deleteAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the directory identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<AccountDirectory?> getAsync([Function(RequestConfiguration<WithDirectoryItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountDirectory>(requestInfo, AccountDirectory.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the directory identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<AccountDirectory?> putAsync(AccountDirectory body, [Function(RequestConfiguration<WithDirectoryItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountDirectory>(requestInfo, AccountDirectory.createFromDiscriminatorValue, errorMapping);
    }
    /// Permanently removes the directory. This cannot be undone.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toDeleteRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Returns the directory identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithDirectoryItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithDirectoryItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithDirectoryItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Updates the directory identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPutRequestInformation(AccountDirectory body, [Function(RequestConfiguration<WithDirectoryItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithDirectoryItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithDirectoryItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
