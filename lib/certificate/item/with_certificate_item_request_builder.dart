import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/certificate/certificate.dart';
import '../../models/error_report.dart';
import './with_certificate_item_request_builder_get_query_parameters.dart';
import './with_certificate_item_request_builder_put_query_parameters.dart';

/// Builds and executes requests for operations under \certificate\{certificateid}
class WithCertificateItemRequestBuilder extends BaseRequestBuilder<WithCertificateItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithCertificateItemRequestBuilder clone() {
        return WithCertificateItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithCertificateItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithCertificateItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/certificate/{certificateid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithCertificateItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithCertificateItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/certificate/{certificateid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Permanently removes the global trusted certificate identified by the id. This cannot be undone.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<void> deleteAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the global trusted certificate identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<Certificate?> getAsync([Function(RequestConfiguration<WithCertificateItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<Certificate>(requestInfo, Certificate.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the global trusted certificate identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<Certificate?> putAsync(Certificate body, [Function(RequestConfiguration<WithCertificateItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<Certificate>(requestInfo, Certificate.createFromDiscriminatorValue, errorMapping);
    }
    /// Permanently removes the global trusted certificate identified by the id. This cannot be undone.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toDeleteRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Returns the global trusted certificate identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithCertificateItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithCertificateItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithCertificateItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Updates the global trusted certificate identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPutRequestInformation(Certificate body, [Function(RequestConfiguration<WithCertificateItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithCertificateItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithCertificateItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
