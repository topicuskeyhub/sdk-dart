import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../models/certificate/certificate_linkable_wrapper.dart';
import '../models/error_report.dart';
import './certificate_request_builder_get_query_parameters.dart';
import './certificate_request_builder_post_query_parameters.dart';
import './item/with_certificate_item_request_builder.dart';

/// Builds and executes requests for operations under \certificate
class CertificateRequestBuilder extends BaseRequestBuilder<CertificateRequestBuilder> {
    /// Gets an item from the ApiSdk.certificate.item collection
    /// <param name="certificateid">certificateid</param>
     WithCertificateItemRequestBuilder byCertificateid(int certificateid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("certificateid", ()=> certificateid);
        return WithCertificateItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
     CertificateRequestBuilder clone() {
        return CertificateRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [CertificateRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     CertificateRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/certificate{?additional*,alias*,any*,createdAfter*,createdBefore*,exclude*,expired*,global*,id*,modifiedSince*,q*,sort*,uuid*}", pathParameters) ;
    /// Instantiates a new [CertificateRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     CertificateRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/certificate{?additional*,alias*,any*,createdAfter*,createdBefore*,exclude*,expired*,global*,id*,modifiedSince*,q*,sort*,uuid*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all global trusted certificates in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<CertificateLinkableWrapper?> getAsync([Function(RequestConfiguration<CertificateRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<CertificateLinkableWrapper>(requestInfo, CertificateLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new global trusted certificates and returns the newly created certificates.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<CertificateLinkableWrapper?> postAsync(CertificateLinkableWrapper body, [Function(RequestConfiguration<CertificateRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<CertificateLinkableWrapper>(requestInfo, CertificateLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all global trusted certificates in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<CertificateRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<CertificateRequestBuilderGetQueryParameters>(requestConfiguration, () => CertificateRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Creates one or more new global trusted certificates and returns the newly created certificates.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPostRequestInformation(CertificateLinkableWrapper body, [Function(RequestConfiguration<CertificateRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<CertificateRequestBuilderPostQueryParameters>(requestConfiguration, () => CertificateRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=73', body);
        return requestInfo;
    }
}
