import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/provisioning/provision_number_sequence.dart';
import './with_numberseq_item_request_builder_get_query_parameters.dart';
import './with_numberseq_item_request_builder_put_query_parameters.dart';

/// Builds and executes requests for operations under \numberseq\{numberseqid}
class WithNumberseqItemRequestBuilder extends BaseRequestBuilder<WithNumberseqItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     WithNumberseqItemRequestBuilder clone() {
        return WithNumberseqItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithNumberseqItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithNumberseqItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/numberseq/{numberseqid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithNumberseqItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     WithNumberseqItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/numberseq/{numberseqid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Permanently removes the provision number sequence. This cannot be undone.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<void> deleteAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the provision number sequence identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<ProvisionNumberSequence?> getAsync([Function(RequestConfiguration<WithNumberseqItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionNumberSequence>(requestInfo, ProvisionNumberSequence.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the provision number sequence identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<ProvisionNumberSequence?> putAsync(ProvisionNumberSequence body, [Function(RequestConfiguration<WithNumberseqItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionNumberSequence>(requestInfo, ProvisionNumberSequence.createFromDiscriminatorValue, errorMapping);
    }
    /// Permanently removes the provision number sequence. This cannot be undone.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toDeleteRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Returns the provision number sequence identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithNumberseqItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithNumberseqItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithNumberseqItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
    /// Updates the provision number sequence identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toPutRequestInformation(ProvisionNumberSequence body, [Function(RequestConfiguration<WithNumberseqItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithNumberseqItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithNumberseqItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=73', body);
        return requestInfo;
    }
}
