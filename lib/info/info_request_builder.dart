import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/simple/version_info.dart';

/// Builds and executes requests for operations under \info
class InfoRequestBuilder extends BaseRequestBuilder<InfoRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    InfoRequestBuilder clone() {
        return InfoRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [InfoRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    InfoRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/info", pathParameters) ;
    /// Instantiates a new [InfoRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    InfoRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/info", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns information about Topicus KeyHub: the version and the supported API versions.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<VersionInfo?> getAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<VersionInfo>(requestInfo, VersionInfo.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns information about Topicus KeyHub: the version and the supported API versions.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}
