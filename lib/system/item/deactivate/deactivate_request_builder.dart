// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error_report.dart';
import './deactivate_request_builder_post_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \system\{systemid}\deactivate
class DeactivateRequestBuilder extends BaseRequestBuilder<DeactivateRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    DeactivateRequestBuilder clone() {
        return DeactivateRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [DeactivateRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DeactivateRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/deactivate{?action*}", pathParameters) ;
    /// Instantiates a new [DeactivateRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DeactivateRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/system/{systemid}/deactivate{?action*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Deactivates the provisioned system specified by the given id. The action runs in the background.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> postAsync([void Function(RequestConfiguration<DeactivateRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Deactivates the provisioned system specified by the given id. The action runs in the background.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DeactivateRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DeactivateRequestBuilderPostQueryParameters>(requestConfiguration, () => DeactivateRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=76');
        return requestInfo;
    }
}
