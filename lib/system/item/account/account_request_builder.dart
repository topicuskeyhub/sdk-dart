// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/provisioning/provisioned_account_linkable_wrapper.dart';
import './account_request_builder_get_query_parameters.dart';
import './item/with_account_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \system\{systemid}\account
class AccountRequestBuilder extends BaseRequestBuilder<AccountRequestBuilder> {
    /// Gets an item from the ApiSdk.system.item.account.item collection
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
    AccountRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/account{?account*,additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,q*,sort*,status*,system*}", pathParameters) ;
    /// Instantiates a new [AccountRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AccountRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/account{?account*,additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,q*,sort*,status*,system*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for provisioned accounts in a system. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ProvisionedAccountLinkableWrapper?> getAsync([void Function(RequestConfiguration<AccountRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionedAccountLinkableWrapper>(requestInfo, ProvisionedAccountLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for provisioned accounts in a system. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<AccountRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AccountRequestBuilderGetQueryParameters>(requestConfiguration, () => AccountRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=80');
        return requestInfo;
    }
}
