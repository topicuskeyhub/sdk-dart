// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error_report.dart';

/// auto generated
/// Builds and executes requests for operations under \group\{groupid}\audit\nextGroup
class NextGroupRequestBuilder extends BaseRequestBuilder<NextGroupRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    NextGroupRequestBuilder clone() {
        return NextGroupRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [NextGroupRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    NextGroupRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/audit/nextGroup", pathParameters) ;
    /// Instantiates a new [NextGroupRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    NextGroupRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/audit/nextGroup", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the next group that requires an audit or a 404 Not Found if there are none.Groups you directly manage are prioritised above groups you are delegated manager of.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<Iterable<int>?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendPrimitiveCollection<int>(requestInfo, errorMapping);
    }
    /// Returns the next group that requires an audit or a 404 Not Found if there are none.Groups you directly manage are prioritised above groups you are delegated manager of.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=78, application/vnd.topicus.keyhub+xml;version=78');
        return requestInfo;
    }
}
