// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/identity/account_attribute_value_linkable_wrapper.dart';
import './attributevalue_request_builder_get_query_parameters.dart';
import './item/with_attributevalue_item_request_builder.dart';
import './override/override_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \account\{accountid}\attributevalue
class AttributevalueRequestBuilder extends BaseRequestBuilder<AttributevalueRequestBuilder> {
    ///  The override property
    OverrideRequestBuilder get override {
        return OverrideRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the ApiSdk.account.item.attributevalue.item collection
    ///  [attributevalueid] Unique identifier of the item
    WithAttributevalueItemRequestBuilder byAttributevalueid(int attributevalueid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('attributevalueid', () => attributevalueid);
        return WithAttributevalueItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    AttributevalueRequestBuilder clone() {
        return AttributevalueRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AttributevalueRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AttributevalueRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/attributevalue{?account*,additional*,any*,attribute*,createdAfter*,createdBefore*,directory*,exclude*,id*,latestForSource*,modifiedSince*,q*,sort*,source*,value*}", pathParameters) ;
    /// Instantiates a new [AttributevalueRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AttributevalueRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/attributevalue{?account*,additional*,any*,attribute*,createdAfter*,createdBefore*,directory*,exclude*,id*,latestForSource*,modifiedSince*,q*,sort*,source*,value*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for account attribute values for a specific account. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccountAttributeValueLinkableWrapper?> getAsync([void Function(RequestConfiguration<AttributevalueRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountAttributeValueLinkableWrapper>(requestInfo, AccountAttributeValueLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for account attribute values for a specific account. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<AttributevalueRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AttributevalueRequestBuilderGetQueryParameters>(requestConfiguration, () => AttributevalueRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=81');
        return requestInfo;
    }
}
