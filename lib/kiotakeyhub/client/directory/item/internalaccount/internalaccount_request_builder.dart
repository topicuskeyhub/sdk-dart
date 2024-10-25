import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/auth/internal_account_linkable_wrapper.dart';
import '../../../models/error_report.dart';
import './internalaccount_request_builder_get_query_parameters.dart';
import './internalaccount_request_builder_post_query_parameters.dart';
import './item/with_internalaccount_item_request_builder.dart';

/// Builds and executes requests for operations under \directory\{directoryid}\internalaccount
class InternalaccountRequestBuilder extends BaseRequestBuilder<InternalaccountRequestBuilder> {
    /// Gets an item from the ApiSdk.directory.item.internalaccount.item collection
    /// <param name="internalaccountid">internalaccountid</param>
     WithInternalaccountItemRequestBuilder byInternalaccountid(int internalaccountid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("internalaccountid", ()=> internalaccountid);
        return WithInternalaccountItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
     InternalaccountRequestBuilder clone() {
        return InternalaccountRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [InternalaccountRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     InternalaccountRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/directory/{directoryid}/internalaccount{?account*,additional*,any*,createdAfter*,createdBefore*,directory*,directoryOwnerGroup*,exclude*,hasBeenActive*,id*,modifiedSince*,organizationalUnit*,q*,sort*,status*}", pathParameters) ;
    /// Instantiates a new [InternalaccountRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     InternalaccountRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/directory/{directoryid}/internalaccount{?account*,additional*,any*,createdAfter*,createdBefore*,directory*,directoryOwnerGroup*,exclude*,hasBeenActive*,id*,modifiedSince*,organizationalUnit*,q*,sort*,status*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Queries over all internal accounts within a directory. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<InternalAccountLinkableWrapper?> getAsync([Function(RequestConfiguration<InternalaccountRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<InternalAccountLinkableWrapper>(requestInfo, InternalAccountLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new internal accounts within a directory and returns the newly created accounts.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<InternalAccountLinkableWrapper?> postAsync(InternalAccountLinkableWrapper body, [Function(RequestConfiguration<InternalaccountRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<InternalAccountLinkableWrapper>(requestInfo, InternalAccountLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Queries over all internal accounts within a directory. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<InternalaccountRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<InternalaccountRequestBuilderGetQueryParameters>(requestConfiguration, () => InternalaccountRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Creates one or more new internal accounts within a directory and returns the newly created accounts.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPostRequestInformation(InternalAccountLinkableWrapper body, [Function(RequestConfiguration<InternalaccountRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<InternalaccountRequestBuilderPostQueryParameters>(requestConfiguration, () => InternalaccountRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=73', body);
        return requestInfo;
    }
}
