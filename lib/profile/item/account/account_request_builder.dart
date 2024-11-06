import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/profile/access_profile_account_linkable_wrapper.dart';
import './account_request_builder_get_query_parameters.dart';
import './account_request_builder_post_query_parameters.dart';
import './item/with_account_item_request_builder.dart';

/// Builds and executes requests for operations under \profile\{accessprofile-id}\account
class AccountRequestBuilder extends BaseRequestBuilder<AccountRequestBuilder> {
    /// Gets an item from the ApiSdk.profile.item.account.item collection
    /// <param name="accountid">accountid</param>
    WithAccountItemRequestBuilder byAccountid(int accountid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("accountid", ()=> accountid);
        return WithAccountItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    AccountRequestBuilder clone() {
        return AccountRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AccountRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    AccountRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/account{?accessProfile*,account*,additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,ownedBy*,q*,sort*}", pathParameters) ;
    /// Instantiates a new [AccountRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    AccountRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/account{?accessProfile*,account*,additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,ownedBy*,q*,sort*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Queries over all members of an access profile. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<AccessProfileAccountLinkableWrapper?> getAsync([Function(RequestConfiguration<AccountRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileAccountLinkableWrapper>(requestInfo, AccessProfileAccountLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new memberships for an access profile and returns the newly created memberships.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<AccessProfileAccountLinkableWrapper?> postAsync(AccessProfileAccountLinkableWrapper body, [Function(RequestConfiguration<AccountRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileAccountLinkableWrapper>(requestInfo, AccessProfileAccountLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Queries over all members of an access profile. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<AccountRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AccountRequestBuilderGetQueryParameters>(requestConfiguration, () => AccountRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Creates one or more new memberships for an access profile and returns the newly created memberships.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPostRequestInformation(AccessProfileAccountLinkableWrapper body, [Function(RequestConfiguration<AccountRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AccountRequestBuilderPostQueryParameters>(requestConfiguration, () => AccountRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
