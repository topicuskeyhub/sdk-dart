// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/simple/version_info.dart';

/// auto generated
/// Builds and executes requests for operations under \info
class InfoRequestBuilder extends BaseRequestBuilder<InfoRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    InfoRequestBuilder clone() {
        return InfoRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [InfoRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    InfoRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/info", pathParameters) ;
    /// Instantiates a new [InfoRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    InfoRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/info", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns information about Topicus KeyHub: the version and the supported API versions.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<VersionInfo?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<VersionInfo>(requestInfo, VersionInfo.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns information about Topicus KeyHub: the version and the supported API versions.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=79');
        return requestInfo;
    }
}
