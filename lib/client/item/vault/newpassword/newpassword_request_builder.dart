import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import '../../../../models/simple/string_value.dart';
import './newpassword_request_builder_get_query_parameters.dart';

/// Builds and executes requests for operations under \client\{clientid}\vault\newpassword
class NewpasswordRequestBuilder extends BaseRequestBuilder<NewpasswordRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    NewpasswordRequestBuilder clone() {
        return NewpasswordRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [NewpasswordRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    NewpasswordRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/{clientid}/vault/newpassword{?strategy*}", pathParameters) ;
    /// Instantiates a new [NewpasswordRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    NewpasswordRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client/{clientid}/vault/newpassword{?strategy*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns a random generated password using the given strategy, or the default strategy if none given.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<StringValue?> getAsync([Function(RequestConfiguration<NewpasswordRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<StringValue>(requestInfo, StringValue.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns a random generated password using the given strategy, or the default strategy if none given.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<NewpasswordRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<NewpasswordRequestBuilderGetQueryParameters>(requestConfiguration, () => NewpasswordRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}
