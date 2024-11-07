import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/provisioning/provisioned_account_linkable_wrapper.dart';
import './account_request_builder_get_query_parameters.dart';
import './item/with_account_item_request_builder.dart';

/// Builds and executes requests for operations under \system\{systemid}\account
class AccountRequestBuilder extends BaseRequestBuilder<AccountRequestBuilder> {
    /// Gets an item from the ApiSdk.system.item.account.item collection
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
    AccountRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/account{?account*,additional*,any*,createdAfter*,createdBefore*,destroyed*,exclude*,id*,modifiedSince*,q*,sort*,system*}", pathParameters) ;
    /// Instantiates a new [AccountRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    AccountRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/account{?account*,additional*,any*,createdAfter*,createdBefore*,destroyed*,exclude*,id*,modifiedSince*,q*,sort*,system*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for provisioned accounts in a system. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<ProvisionedAccountLinkableWrapper?> getAsync([Function(RequestConfiguration<AccountRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionedAccountLinkableWrapper>(requestInfo, ProvisionedAccountLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for provisioned accounts in a system. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<AccountRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AccountRequestBuilderGetQueryParameters>(requestConfiguration, () => AccountRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}
