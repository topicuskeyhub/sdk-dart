// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/identitysource/identity_source_linkable_wrapper.dart';
import './identitysource_request_builder_get_query_parameters.dart';
import './identitysource_request_builder_post_query_parameters.dart';
import './item/with_identitysource_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \identitysource
class IdentitysourceRequestBuilder extends BaseRequestBuilder<IdentitysourceRequestBuilder> {
    /// Gets an item from the ApiSdk.identitysource.item collection
    ///  [identitysourceid] Unique identifier of the item
    WithIdentitysourceItemRequestBuilder byIdentitysourceid(int identitysourceid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('identitysourceid', () => identitysourceid);
        return WithIdentitysourceItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    IdentitysourceRequestBuilder clone() {
        return IdentitysourceRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [IdentitysourceRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    IdentitysourceRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/identitysource{?additional*,any*,client*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,name*,nameContains*,q*,sort*,uuid*}", pathParameters) ;
    /// Instantiates a new [IdentitysourceRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    IdentitysourceRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/identitysource{?additional*,any*,client*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,name*,nameContains*,q*,sort*,uuid*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all identity sources in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<IdentitySourceLinkableWrapper?> getAsync([void Function(RequestConfiguration<IdentitysourceRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<IdentitySourceLinkableWrapper>(requestInfo, IdentitySourceLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new identity sources and returns the newly created sources.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<IdentitySourceLinkableWrapper?> postAsync(IdentitySourceLinkableWrapper body, [void Function(RequestConfiguration<IdentitysourceRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<IdentitySourceLinkableWrapper>(requestInfo, IdentitySourceLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all identity sources in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<IdentitysourceRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<IdentitysourceRequestBuilderGetQueryParameters>(requestConfiguration, () => IdentitysourceRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=79');
        return requestInfo;
    }
    /// Creates one or more new identity sources and returns the newly created sources.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(IdentitySourceLinkableWrapper body, [void Function(RequestConfiguration<IdentitysourceRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<IdentitysourceRequestBuilderPostQueryParameters>(requestConfiguration, () => IdentitysourceRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=79');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=79', body);
        return requestInfo;
    }
}
