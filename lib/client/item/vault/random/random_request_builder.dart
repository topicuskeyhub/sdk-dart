// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import '../../../../models/simple/string_value.dart';
import './random_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \client\{clientid}\vault\random
class RandomRequestBuilder extends BaseRequestBuilder<RandomRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RandomRequestBuilder clone() {
        return RandomRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RandomRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RandomRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/{clientid}/vault/random{?length*}", pathParameters) ;
    /// Instantiates a new [RandomRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RandomRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/{clientid}/vault/random{?length*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns a random generated value of the given length, default 24.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<StringValue?> getAsync([void Function(RequestConfiguration<RandomRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<StringValue>(requestInfo, StringValue.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns a random generated value of the given length, default 24.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<RandomRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<RandomRequestBuilderGetQueryParameters>(requestConfiguration, () => RandomRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=76');
        return requestInfo;
    }
}
