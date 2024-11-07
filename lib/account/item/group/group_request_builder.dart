import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/group/account_group_linkable_wrapper.dart';
import './group_request_builder_get_query_parameters.dart';
import './item/with_group_item_request_builder.dart';

/// Builds and executes requests for operations under \account\{accountid}\group
class GroupRequestBuilder extends BaseRequestBuilder<GroupRequestBuilder> {
    /// Gets an item from the ApiSdk.account.item.group.item collection
    /// <param name="groupid">groupid</param>
    WithGroupItemRequestBuilder byGroupid(int groupid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("groupid", ()=> groupid);
        return WithGroupItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    GroupRequestBuilder clone() {
        return GroupRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [GroupRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    GroupRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/group{?account*,additional*,any*,applicableForActivation*,createdAfter*,createdBefore*,exclude*,expiredAt*,group*,groupNameContains*,id*,modifiedSince*,nested*,organizationalUnit*,q*,rights*,signature*,sort*,vaultAccess*}", pathParameters) ;
    /// Instantiates a new [GroupRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    GroupRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/group{?account*,additional*,any*,applicableForActivation*,createdAfter*,createdBefore*,exclude*,expiredAt*,group*,groupNameContains*,id*,modifiedSince*,nested*,organizationalUnit*,q*,rights*,signature*,sort*,vaultAccess*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Queries over all groups the account is member of. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<AccountGroupLinkableWrapper?> getAsync([Function(RequestConfiguration<GroupRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountGroupLinkableWrapper>(requestInfo, AccountGroupLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Queries over all groups the account is member of. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<GroupRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<GroupRequestBuilderGetQueryParameters>(requestConfiguration, () => GroupRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}
