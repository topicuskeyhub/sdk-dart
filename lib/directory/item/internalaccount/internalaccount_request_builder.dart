// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/auth/internal_account_linkable_wrapper.dart';
import '../../../models/error_report.dart';
import './internalaccount_request_builder_get_query_parameters.dart';
import './internalaccount_request_builder_post_query_parameters.dart';
import './item/with_internalaccount_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \directory\{directoryid}\internalaccount
class InternalaccountRequestBuilder extends BaseRequestBuilder<InternalaccountRequestBuilder> {
    /// Gets an item from the ApiSdk.directory.item.internalaccount.item collection
    ///  [internalaccountid] Unique identifier of the item
    WithInternalaccountItemRequestBuilder byInternalaccountid(int internalaccountid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('internalaccountid', () => internalaccountid);
        return WithInternalaccountItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    InternalaccountRequestBuilder clone() {
        return InternalaccountRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [InternalaccountRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    InternalaccountRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/directory/{directoryid}/internalaccount{?account*,additional*,any*,createdAfter*,createdBefore*,directory*,directoryOwnerGroup*,exclude*,id*,modifiedSince*,organizationalUnit*,q*,sort*,status*}", pathParameters) ;
    /// Instantiates a new [InternalaccountRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    InternalaccountRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/directory/{directoryid}/internalaccount{?account*,additional*,any*,createdAfter*,createdBefore*,directory*,directoryOwnerGroup*,exclude*,id*,modifiedSince*,organizationalUnit*,q*,sort*,status*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Queries over all internal accounts within a directory. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<InternalAccountLinkableWrapper?> getAsync([void Function(RequestConfiguration<InternalaccountRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<InternalAccountLinkableWrapper>(requestInfo, InternalAccountLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new internal accounts within a directory and returns the newly created accounts.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<InternalAccountLinkableWrapper?> postAsync(InternalAccountLinkableWrapper body, [void Function(RequestConfiguration<InternalaccountRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<InternalAccountLinkableWrapper>(requestInfo, InternalAccountLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Queries over all internal accounts within a directory. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<InternalaccountRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<InternalaccountRequestBuilderGetQueryParameters>(requestConfiguration, () => InternalaccountRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
    /// Creates one or more new internal accounts within a directory and returns the newly created accounts.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(InternalAccountLinkableWrapper body, [void Function(RequestConfiguration<InternalaccountRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<InternalaccountRequestBuilderPostQueryParameters>(requestConfiguration, () => InternalaccountRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=78', body);
        return requestInfo;
    }
}
