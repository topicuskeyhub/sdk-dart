// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/request/modification_request.dart';
import './cancel/cancel_request_builder.dart';
import './with_request_item_request_builder_get_query_parameters.dart';
import './with_request_item_request_builder_put_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \request\{requestid}
class WithRequestItemRequestBuilder extends BaseRequestBuilder<WithRequestItemRequestBuilder> {
    ///  The cancel property
    CancelRequestBuilder get cancel {
        return CancelRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithRequestItemRequestBuilder clone() {
        return WithRequestItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithRequestItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithRequestItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/request/{requestid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithRequestItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithRequestItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/request/{requestid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the single modification request.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ModificationRequest?> getAsync([void Function(RequestConfiguration<WithRequestItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ModificationRequest>(requestInfo, ModificationRequest.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the modification request identified by the id. Only the status and feedback can be updated and only when the request currently has status 'REQUESTED'.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ModificationRequest?> putAsync(ModificationRequest body, [void Function(RequestConfiguration<WithRequestItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ModificationRequest>(requestInfo, ModificationRequest.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the single modification request.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithRequestItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithRequestItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithRequestItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=77');
        return requestInfo;
    }
    /// Updates the modification request identified by the id. Only the status and feedback can be updated and only when the request currently has status 'REQUESTED'.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPutRequestInformation(ModificationRequest body, [void Function(RequestConfiguration<WithRequestItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithRequestItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithRequestItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=77');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=77', body);
        return requestInfo;
    }
}
