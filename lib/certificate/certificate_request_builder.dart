// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/certificate/certificate_linkable_wrapper.dart';
import '../models/error_report.dart';
import './certificate_request_builder_get_query_parameters.dart';
import './certificate_request_builder_post_query_parameters.dart';
import './item/with_certificate_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \certificate
class CertificateRequestBuilder extends BaseRequestBuilder<CertificateRequestBuilder> {
    /// Gets an item from the ApiSdk.certificate.item collection
    ///  [certificateid] Unique identifier of the item
    WithCertificateItemRequestBuilder byCertificateid(int certificateid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('certificateid', () => certificateid);
        return WithCertificateItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    CertificateRequestBuilder clone() {
        return CertificateRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [CertificateRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CertificateRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/certificate{?additional*,alias*,any*,createdAfter*,createdBefore*,exclude*,expired*,global*,id*,modifiedSince*,q*,sort*,uuid*}", pathParameters) ;
    /// Instantiates a new [CertificateRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CertificateRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/certificate{?additional*,alias*,any*,createdAfter*,createdBefore*,exclude*,expired*,global*,id*,modifiedSince*,q*,sort*,uuid*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all global trusted certificates in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<CertificateLinkableWrapper?> getAsync([void Function(RequestConfiguration<CertificateRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<CertificateLinkableWrapper>(requestInfo, CertificateLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new global trusted certificates and returns the newly created certificates.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<CertificateLinkableWrapper?> postAsync(CertificateLinkableWrapper body, [void Function(RequestConfiguration<CertificateRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<CertificateLinkableWrapper>(requestInfo, CertificateLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all global trusted certificates in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<CertificateRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<CertificateRequestBuilderGetQueryParameters>(requestConfiguration, () => CertificateRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=77');
        return requestInfo;
    }
    /// Creates one or more new global trusted certificates and returns the newly created certificates.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(CertificateLinkableWrapper body, [void Function(RequestConfiguration<CertificateRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<CertificateRequestBuilderPostQueryParameters>(requestConfiguration, () => CertificateRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=77');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=77', body);
        return requestInfo;
    }
}
