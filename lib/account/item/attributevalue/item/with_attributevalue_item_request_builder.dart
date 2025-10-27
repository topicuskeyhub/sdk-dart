// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import '../../../../models/identity/account_attribute_value.dart';
import './with_attributevalue_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \account\{accountid}\attributevalue\{attributevalueid}
class WithAttributevalueItemRequestBuilder extends BaseRequestBuilder<WithAttributevalueItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithAttributevalueItemRequestBuilder clone() {
        return WithAttributevalueItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithAttributevalueItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithAttributevalueItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/attributevalue/{attributevalueid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithAttributevalueItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithAttributevalueItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/attributevalue/{attributevalueid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the account attribute value identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccountAttributeValue?> getAsync([void Function(RequestConfiguration<WithAttributevalueItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountAttributeValue>(requestInfo, AccountAttributeValue.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the account attribute value identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithAttributevalueItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithAttributevalueItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithAttributevalueItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=81');
        return requestInfo;
    }
}
