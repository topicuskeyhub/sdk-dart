import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/error_report.dart';
import './export_request_builder_post_query_parameters.dart';

/// Builds and executes requests for operations under \serviceaccount\export
class ExportRequestBuilder extends BaseRequestBuilder<ExportRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ExportRequestBuilder clone() {
        return ExportRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ExportRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    ExportRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/serviceaccount/export{?active*,any*,createdAfter*,createdBefore*,exclude*,groupOnSystem*,groupOnSystemOwners*,id*,modifiedSince*,name*,nameContains*,nameDoesNotStartWith*,nameStartsWith*,organizationalUnitForEnforcement*,password*,passwordRotation*,q*,requestedGroupOnSystemOwners*,sort*,system*,systemContentAdministrators*,systemOwners*,systemTechnicalAdministrators*,technicalAdministrator*,username*,uuid*}", pathParameters) ;
    /// Instantiates a new [ExportRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    ExportRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/serviceaccount/export{?active*,any*,createdAfter*,createdBefore*,exclude*,groupOnSystem*,groupOnSystemOwners*,id*,modifiedSince*,name*,nameContains*,nameDoesNotStartWith*,nameStartsWith*,organizationalUnitForEnforcement*,password*,passwordRotation*,q*,requestedGroupOnSystemOwners*,sort*,system*,systemContentAdministrators*,systemOwners*,systemTechnicalAdministrators*,technicalAdministrator*,username*,uuid*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Prepares an export of service accounts using the filtering specified in the query parameters. The URI of the export can be found in the returned Location header. This URI is valid for 2 minutes after being generated.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<void> postAsync([Function(RequestConfiguration<ExportRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Prepares an export of service accounts using the filtering specified in the query parameters. The URI of the export can be found in the returned Location header. This URI is valid for 2 minutes after being generated.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPostRequestInformation([Function(RequestConfiguration<ExportRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ExportRequestBuilderPostQueryParameters>(requestConfiguration, () => ExportRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}
