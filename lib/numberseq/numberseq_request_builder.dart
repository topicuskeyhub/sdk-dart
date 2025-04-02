// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/provisioning/provision_number_sequence_linkable_wrapper.dart';
import './item/with_numberseq_item_request_builder.dart';
import './numberseq_request_builder_get_query_parameters.dart';
import './numberseq_request_builder_post_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \numberseq
class NumberseqRequestBuilder extends BaseRequestBuilder<NumberseqRequestBuilder> {
    /// Gets an item from the ApiSdk.numberseq.item collection
    ///  [numberseqid] Unique identifier of the item
    WithNumberseqItemRequestBuilder byNumberseqid(int numberseqid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('numberseqid', () => numberseqid);
        return WithNumberseqItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    NumberseqRequestBuilder clone() {
        return NumberseqRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [NumberseqRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    NumberseqRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/numberseq{?additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,name*,q*,sort*}", pathParameters) ;
    /// Instantiates a new [NumberseqRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    NumberseqRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/numberseq{?additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,name*,q*,sort*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all provision number sequences in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ProvisionNumberSequenceLinkableWrapper?> getAsync([void Function(RequestConfiguration<NumberseqRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionNumberSequenceLinkableWrapper>(requestInfo, ProvisionNumberSequenceLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new provision number sequences and returns the newly created sequences.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ProvisionNumberSequenceLinkableWrapper?> postAsync(ProvisionNumberSequenceLinkableWrapper body, [void Function(RequestConfiguration<NumberseqRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ProvisionNumberSequenceLinkableWrapper>(requestInfo, ProvisionNumberSequenceLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all provision number sequences in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<NumberseqRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<NumberseqRequestBuilderGetQueryParameters>(requestConfiguration, () => NumberseqRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=77');
        return requestInfo;
    }
    /// Creates one or more new provision number sequences and returns the newly created sequences.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(ProvisionNumberSequenceLinkableWrapper body, [void Function(RequestConfiguration<NumberseqRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<NumberseqRequestBuilderPostQueryParameters>(requestConfiguration, () => NumberseqRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=77');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=77', body);
        return requestInfo;
    }
}
