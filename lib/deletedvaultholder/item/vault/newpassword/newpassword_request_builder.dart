// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import '../../../../models/simple/string_value.dart';
import './newpassword_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \deletedvaultholder\{deletedvaultholder-id}\vault\newpassword
class NewpasswordRequestBuilder extends BaseRequestBuilder<NewpasswordRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    NewpasswordRequestBuilder clone() {
        return NewpasswordRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [NewpasswordRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    NewpasswordRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/deletedvaultholder/{deletedvaultholder%2Did}/vault/newpassword{?strategy*}", pathParameters) ;
    /// Instantiates a new [NewpasswordRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    NewpasswordRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/deletedvaultholder/{deletedvaultholder%2Did}/vault/newpassword{?strategy*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns a random generated password using the given strategy, or the default strategy if none given.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<StringValue?> getAsync([void Function(RequestConfiguration<NewpasswordRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<StringValue>(requestInfo, StringValue.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns a random generated password using the given strategy, or the default strategy if none given.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<NewpasswordRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<NewpasswordRequestBuilderGetQueryParameters>(requestConfiguration, () => NewpasswordRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=77');
        return requestInfo;
    }
}
