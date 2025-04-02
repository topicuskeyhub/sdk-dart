// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/audit/group_audit.dart';
import '../../../../models/error_report.dart';

/// auto generated
/// Builds and executes requests for operations under \group\{groupid}\audit\new
class NewRequestBuilder extends BaseRequestBuilder<NewRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    NewRequestBuilder clone() {
        return NewRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [NewRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    NewRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/audit/new", pathParameters) ;
    /// Instantiates a new [NewRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    NewRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/audit/new", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns a template of a complete audit for the group. The template can then be filled in and posted to actually create the audit.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GroupAudit?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupAudit>(requestInfo, GroupAudit.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns a template of a complete audit for the group. The template can then be filled in and posted to actually create the audit.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=77');
        return requestInfo;
    }
}
