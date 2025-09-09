// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/identity/account_attribute_definition_linkable_wrapper.dart';
import './attributedef_request_builder_get_query_parameters.dart';
import './attributedef_request_builder_post_query_parameters.dart';
import './item/with_attributedef_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \attributedef
class AttributedefRequestBuilder extends BaseRequestBuilder<AttributedefRequestBuilder> {
    /// Gets an item from the ApiSdk.attributedef.item collection
    ///  [attributedefid] Unique identifier of the item
    WithAttributedefItemRequestBuilder byAttributedefid(int attributedefid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('attributedefid', () => attributedefid);
        return WithAttributedefItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    AttributedefRequestBuilder clone() {
        return AttributedefRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AttributedefRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AttributedefRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/attributedef{?additional*,any*,createdAfter*,createdBefore*,exclude*,format*,id*,modifiedSince*,name*,nameContains*,noRuleForAccessProfile*,q*,required*,sort*,systemDefinition*,unique*}", pathParameters) ;
    /// Instantiates a new [AttributedefRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AttributedefRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/attributedef{?additional*,any*,createdAfter*,createdBefore*,exclude*,format*,id*,modifiedSince*,name*,nameContains*,noRuleForAccessProfile*,q*,required*,sort*,systemDefinition*,unique*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all account attribute definitions in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccountAttributeDefinitionLinkableWrapper?> getAsync([void Function(RequestConfiguration<AttributedefRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountAttributeDefinitionLinkableWrapper>(requestInfo, AccountAttributeDefinitionLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new account attribute definitions and returns the newly created account attribute definitions.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccountAttributeDefinitionLinkableWrapper?> postAsync(AccountAttributeDefinitionLinkableWrapper body, [void Function(RequestConfiguration<AttributedefRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountAttributeDefinitionLinkableWrapper>(requestInfo, AccountAttributeDefinitionLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all account attribute definitions in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<AttributedefRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AttributedefRequestBuilderGetQueryParameters>(requestConfiguration, () => AttributedefRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=80');
        return requestInfo;
    }
    /// Creates one or more new account attribute definitions and returns the newly created account attribute definitions.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(AccountAttributeDefinitionLinkableWrapper body, [void Function(RequestConfiguration<AttributedefRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AttributedefRequestBuilderPostQueryParameters>(requestConfiguration, () => AttributedefRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=80');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=80', body);
        return requestInfo;
    }
}
