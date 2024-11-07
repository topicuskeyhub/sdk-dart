import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/provisioning/provision_number_sequence_linkable_wrapper.dart';
import './item/with_numberseq_item_request_builder.dart';
import './numberseq_request_builder_get_query_parameters.dart';
import './numberseq_request_builder_post_query_parameters.dart';

/// Builds and executes requests for operations under \numberseq
class NumberseqRequestBuilder extends BaseRequestBuilder<NumberseqRequestBuilder> {
    /// Gets an item from the ApiSdk.numberseq.item collection
    /// <param name="numberseqid">numberseqid</param>
    WithNumberseqItemRequestBuilder byNumberseqid(int numberseqid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("numberseqid", ()=> numberseqid);
        return WithNumberseqItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    NumberseqRequestBuilder clone() {
        return NumberseqRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [NumberseqRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    NumberseqRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/numberseq{?additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,name*,q*,sort*}", pathParameters) ;
    /// Instantiates a new [NumberseqRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    NumberseqRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/numberseq{?additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,name*,q*,sort*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all provision number sequences in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<ProvisionNumberSequenceLinkableWrapper?> getAsync([Function(RequestConfiguration<NumberseqRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionNumberSequenceLinkableWrapper>(requestInfo, ProvisionNumberSequenceLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new provision number sequences and returns the newly created sequences.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<ProvisionNumberSequenceLinkableWrapper?> postAsync(ProvisionNumberSequenceLinkableWrapper body, [Function(RequestConfiguration<NumberseqRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionNumberSequenceLinkableWrapper>(requestInfo, ProvisionNumberSequenceLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all provision number sequences in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<NumberseqRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<NumberseqRequestBuilderGetQueryParameters>(requestConfiguration, () => NumberseqRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Creates one or more new provision number sequences and returns the newly created sequences.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPostRequestInformation(ProvisionNumberSequenceLinkableWrapper body, [Function(RequestConfiguration<NumberseqRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<NumberseqRequestBuilderPostQueryParameters>(requestConfiguration, () => NumberseqRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
