import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/request/modification_request.dart';
import './cancel/cancel_request_builder.dart';
import './with_request_item_request_builder_get_query_parameters.dart';
import './with_request_item_request_builder_put_query_parameters.dart';

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
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithRequestItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/request/{requestid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithRequestItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithRequestItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/request/{requestid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the single modification request.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<ModificationRequest?> getAsync([Function(RequestConfiguration<WithRequestItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ModificationRequest>(requestInfo, ModificationRequest.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the modification request identified by the id. Only the status and feedback can be updated and only when the request currently has status 'REQUESTED'.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<ModificationRequest?> putAsync(ModificationRequest body, [Function(RequestConfiguration<WithRequestItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ModificationRequest>(requestInfo, ModificationRequest.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the single modification request.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithRequestItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithRequestItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithRequestItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Updates the modification request identified by the id. Only the status and feedback can be updated and only when the request currently has status 'REQUESTED'.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPutRequestInformation(ModificationRequest body, [Function(RequestConfiguration<WithRequestItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithRequestItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithRequestItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=73', body);
        return requestInfo;
    }
}
