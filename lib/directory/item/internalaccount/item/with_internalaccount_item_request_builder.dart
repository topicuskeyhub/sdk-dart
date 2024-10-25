import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../../models/auth/internal_account.dart';
import '../../../../models/error_report.dart';
import './move/move_request_builder.dart';
import './status/status_request_builder.dart';
import './with_internalaccount_item_request_builder_get_query_parameters.dart';
import './with_internalaccount_item_request_builder_put_query_parameters.dart';

/// Builds and executes requests for operations under \directory\{directoryid}\internalaccount\{internalaccountid}
class WithInternalaccountItemRequestBuilder extends BaseRequestBuilder<WithInternalaccountItemRequestBuilder> {
    ///  The move property
    MoveRequestBuilder get move {
        return MoveRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The status property
    StatusRequestBuilder get status {
        return StatusRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
     WithInternalaccountItemRequestBuilder clone() {
        return WithInternalaccountItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithInternalaccountItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithInternalaccountItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/directory/{directoryid}/internalaccount/{internalaccountid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithInternalaccountItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithInternalaccountItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/directory/{directoryid}/internalaccount/{internalaccountid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Removes the specified internal accounts from a directory, including the associated KeyHub account.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<void> deleteAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the single internal accounts within a directory.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<InternalAccount?> getAsync([Function(RequestConfiguration<WithInternalaccountItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<InternalAccount>(requestInfo, InternalAccount.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the internal accounts within a directory identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<InternalAccount?> putAsync(InternalAccount body, [Function(RequestConfiguration<WithInternalaccountItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<InternalAccount>(requestInfo, InternalAccount.createFromDiscriminatorValue, errorMapping);
    }
    /// Removes the specified internal accounts from a directory, including the associated KeyHub account.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toDeleteRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Returns the single internal accounts within a directory.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithInternalaccountItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithInternalaccountItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithInternalaccountItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Updates the internal accounts within a directory identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPutRequestInformation(InternalAccount body, [Function(RequestConfiguration<WithInternalaccountItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithInternalaccountItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithInternalaccountItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=73', body);
        return requestInfo;
    }
}
