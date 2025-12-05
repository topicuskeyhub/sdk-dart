// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/provisioning/provision_number_sequence.dart';
import './with_numberseq_item_request_builder_get_query_parameters.dart';
import './with_numberseq_item_request_builder_put_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \numberseq\{numberseqid}
class WithNumberseqItemRequestBuilder extends BaseRequestBuilder<WithNumberseqItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithNumberseqItemRequestBuilder clone() {
        return WithNumberseqItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithNumberseqItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithNumberseqItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/numberseq/{numberseqid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithNumberseqItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithNumberseqItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/numberseq/{numberseqid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Permanently removes the provision number sequence. This cannot be undone.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the provision number sequence identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ProvisionNumberSequence?> getAsync([void Function(RequestConfiguration<WithNumberseqItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionNumberSequence>(requestInfo, ProvisionNumberSequence.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the provision number sequence identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ProvisionNumberSequence?> putAsync(ProvisionNumberSequence body, [void Function(RequestConfiguration<WithNumberseqItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionNumberSequence>(requestInfo, ProvisionNumberSequence.createFromDiscriminatorValue, errorMapping);
    }
    /// Permanently removes the provision number sequence. This cannot be undone.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=82');
        return requestInfo;
    }
    /// Returns the provision number sequence identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithNumberseqItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithNumberseqItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithNumberseqItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=82');
        return requestInfo;
    }
    /// Updates the provision number sequence identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPutRequestInformation(ProvisionNumberSequence body, [void Function(RequestConfiguration<WithNumberseqItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithNumberseqItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithNumberseqItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=82');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=82', body);
        return requestInfo;
    }
}
