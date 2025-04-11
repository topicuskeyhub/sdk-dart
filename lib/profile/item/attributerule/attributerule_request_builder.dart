// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/identity/account_attribute_rule_linkable_wrapper.dart';
import './attributerule_request_builder_get_query_parameters.dart';
import './attributerule_request_builder_post_query_parameters.dart';
import './item/with_attributerule_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \profile\{accessprofile-id}\attributerule
class AttributeruleRequestBuilder extends BaseRequestBuilder<AttributeruleRequestBuilder> {
    /// Gets an item from the ApiSdk.profile.item.attributerule.item collection
    ///  [attributeruleid] Unique identifier of the item
    WithAttributeruleItemRequestBuilder byAttributeruleid(int attributeruleid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('attributeruleid', () => attributeruleid);
        return WithAttributeruleItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    AttributeruleRequestBuilder clone() {
        return AttributeruleRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AttributeruleRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AttributeruleRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/attributerule{?accessProfile*,accessProfileOwningGroup*,additional*,any*,attribute*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,organizationalUnit*,q*,sort*}", pathParameters) ;
    /// Instantiates a new [AttributeruleRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AttributeruleRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/attributerule{?accessProfile*,accessProfileOwningGroup*,additional*,any*,attribute*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,organizationalUnit*,q*,sort*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all account attribute rules in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccountAttributeRuleLinkableWrapper?> getAsync([void Function(RequestConfiguration<AttributeruleRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountAttributeRuleLinkableWrapper>(requestInfo, AccountAttributeRuleLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new account attribute rules and returns the newly created account attribute rules.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccountAttributeRuleLinkableWrapper?> postAsync(AccountAttributeRuleLinkableWrapper body, [void Function(RequestConfiguration<AttributeruleRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountAttributeRuleLinkableWrapper>(requestInfo, AccountAttributeRuleLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all account attribute rules in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<AttributeruleRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AttributeruleRequestBuilderGetQueryParameters>(requestConfiguration, () => AttributeruleRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        return requestInfo;
    }
    /// Creates one or more new account attribute rules and returns the newly created account attribute rules.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(AccountAttributeRuleLinkableWrapper body, [void Function(RequestConfiguration<AttributeruleRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<AttributeruleRequestBuilderPostQueryParameters>(requestConfiguration, () => AttributeruleRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=78', body);
        return requestInfo;
    }
}
