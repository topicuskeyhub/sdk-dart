import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/group/group_account_linkable_wrapper.dart';
import './account_request_builder_get_query_parameters.dart';
import './account_request_builder_post_query_parameters.dart';
import './item/with_account_item_request_builder.dart';

/// Builds and executes requests for operations under \group\{groupid}\account
class AccountRequestBuilder extends BaseRequestBuilder<AccountRequestBuilder> {
    /// Gets an item from the ApiSdk.group.item.account.item collection
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
    AccountRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/account{?account*,additional*,any*,applicableForActivation*,createdAfter*,createdBefore*,exclude*,expiredAt*,group*,groupNameContains*,id*,modifiedSince*,nested*,organizationalUnit*,q*,rights*,signature*,sort*,vaultAccess*}", pathParameters) ;
    /// Instantiates a new [AccountRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    AccountRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/account{?account*,additional*,any*,applicableForActivation*,createdAfter*,createdBefore*,exclude*,expiredAt*,group*,groupNameContains*,id*,modifiedSince*,nested*,organizationalUnit*,q*,rights*,signature*,sort*,vaultAccess*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Queries over all members of a group. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<GroupAccountLinkableWrapper?> getAsync([Function(RequestConfiguration<AccountRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupAccountLinkableWrapper>(requestInfo, GroupAccountLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new memberships for a group and returns the newly created memberships.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<GroupAccountLinkableWrapper?> postAsync(GroupAccountLinkableWrapper body, [Function(RequestConfiguration<AccountRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupAccountLinkableWrapper>(requestInfo, GroupAccountLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Queries over all members of a group. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<AccountRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AccountRequestBuilderGetQueryParameters>(requestConfiguration, () => AccountRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Creates one or more new memberships for a group and returns the newly created memberships.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPostRequestInformation(GroupAccountLinkableWrapper body, [Function(RequestConfiguration<AccountRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AccountRequestBuilderPostQueryParameters>(requestConfiguration, () => AccountRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
