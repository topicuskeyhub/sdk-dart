import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import '../../../../models/provisioning/provisioned_account.dart';
import './with_account_item_request_builder_get_query_parameters.dart';

/// Builds and executes requests for operations under \system\{systemid}\account\{accountid}
class WithAccountItemRequestBuilder extends BaseRequestBuilder<WithAccountItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     WithAccountItemRequestBuilder clone() {
        return WithAccountItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithAccountItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithAccountItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/account/{accountid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithAccountItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithAccountItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/account/{accountid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the provisioned account identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<ProvisionedAccount?> getAsync([Function(RequestConfiguration<WithAccountItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionedAccount>(requestInfo, ProvisionedAccount.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the provisioned account identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithAccountItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithAccountItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithAccountItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}
