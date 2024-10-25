import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../../models/audit/group_audit.dart';
import '../../../../models/error_report.dart';

/// Builds and executes requests for operations under \group\{groupid}\audit\new
class NewRequestBuilder extends BaseRequestBuilder<NewRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     NewRequestBuilder clone() {
        return NewRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [NewRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     NewRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/audit/new", pathParameters) ;
    /// Instantiates a new [NewRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     NewRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/group/{groupid}/audit/new", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns a template of a complete audit for the group. The template can then be filled in and posted to actually create the audit.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<GroupAudit?> getAsync([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GroupAudit>(requestInfo, GroupAudit.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns a template of a complete audit for the group. The template can then be filled in and posted to actually create the audit.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}
