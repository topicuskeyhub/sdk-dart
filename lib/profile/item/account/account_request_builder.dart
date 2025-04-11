// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/profile/access_profile_account_linkable_wrapper.dart';
import './account_request_builder_get_query_parameters.dart';
import './account_request_builder_post_query_parameters.dart';
import './item/with_account_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \profile\{accessprofile-id}\account
class AccountRequestBuilder extends BaseRequestBuilder<AccountRequestBuilder> {
    /// Gets an item from the ApiSdk.profile.item.account.item collection
    ///  [accountid] Unique identifier of the item
    WithAccountItemRequestBuilder byAccountid(int accountid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('accountid', () => accountid);
        return WithAccountItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    AccountRequestBuilder clone() {
        return AccountRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AccountRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AccountRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/account{?accessProfile*,account*,additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,ownedBy*,q*,sort*}", pathParameters) ;
    /// Instantiates a new [AccountRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AccountRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/account{?accessProfile*,account*,additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,ownedBy*,q*,sort*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Queries over all members of an access profile. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccessProfileAccountLinkableWrapper?> getAsync([void Function(RequestConfiguration<AccountRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileAccountLinkableWrapper>(requestInfo, AccessProfileAccountLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new memberships for an access profile and returns the newly created memberships.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccessProfileAccountLinkableWrapper?> postAsync(AccessProfileAccountLinkableWrapper body, [void Function(RequestConfiguration<AccountRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileAccountLinkableWrapper>(requestInfo, AccessProfileAccountLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Queries over all members of an access profile. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<AccountRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AccountRequestBuilderGetQueryParameters>(requestConfiguration, () => AccountRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
    /// Creates one or more new memberships for an access profile and returns the newly created memberships.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(AccessProfileAccountLinkableWrapper body, [void Function(RequestConfiguration<AccountRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AccountRequestBuilderPostQueryParameters>(requestConfiguration, () => AccountRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=78', body);
        return requestInfo;
    }
}
