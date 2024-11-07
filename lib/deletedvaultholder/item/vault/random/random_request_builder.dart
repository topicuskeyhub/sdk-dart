import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import '../../../../models/simple/string_value.dart';
import './random_request_builder_get_query_parameters.dart';

/// Builds and executes requests for operations under \deletedvaultholder\{deletedvaultholder-id}\vault\random
class RandomRequestBuilder extends BaseRequestBuilder<RandomRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RandomRequestBuilder clone() {
        return RandomRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RandomRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    RandomRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/deletedvaultholder/{deletedvaultholder%2Did}/vault/random{?length*}", pathParameters) ;
    /// Instantiates a new [RandomRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    RandomRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/deletedvaultholder/{deletedvaultholder%2Did}/vault/random{?length*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns a random generated value of the given length, default 24.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<StringValue?> getAsync([Function(RequestConfiguration<RandomRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<StringValue>(requestInfo, StringValue.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns a random generated value of the given length, default 24.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<RandomRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<RandomRequestBuilderGetQueryParameters>(requestConfiguration, () => RandomRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}
