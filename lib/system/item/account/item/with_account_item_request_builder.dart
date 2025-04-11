// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import '../../../../models/provisioning/provisioned_account.dart';
import './with_account_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \system\{systemid}\account\{accountid}
class WithAccountItemRequestBuilder extends BaseRequestBuilder<WithAccountItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithAccountItemRequestBuilder clone() {
        return WithAccountItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithAccountItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithAccountItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/account/{accountid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithAccountItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithAccountItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/account/{accountid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the provisioned account identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ProvisionedAccount?> getAsync([void Function(RequestConfiguration<WithAccountItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionedAccount>(requestInfo, ProvisionedAccount.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the provisioned account identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithAccountItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithAccountItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithAccountItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
}
