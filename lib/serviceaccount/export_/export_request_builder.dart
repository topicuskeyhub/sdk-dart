// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error_report.dart';
import './export_request_builder_post_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \serviceaccount\export
class ExportRequestBuilder extends BaseRequestBuilder<ExportRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ExportRequestBuilder clone() {
        return ExportRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ExportRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ExportRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/serviceaccount/export{?active*,any*,createdAfter*,createdBefore*,exclude*,groupOnSystem*,groupOnSystemOwners*,id*,modifiedSince*,name*,nameContains*,nameDoesNotStartWith*,nameStartsWith*,organizationalUnitForEnforcement*,password*,passwordRotation*,q*,requestedGroupOnSystemOwners*,sort*,system*,systemContentAdministrators*,systemOwners*,systemTechnicalAdministrators*,technicalAdministrator*,username*,uuid*}", pathParameters) ;
    /// Instantiates a new [ExportRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ExportRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/serviceaccount/export{?active*,any*,createdAfter*,createdBefore*,exclude*,groupOnSystem*,groupOnSystemOwners*,id*,modifiedSince*,name*,nameContains*,nameDoesNotStartWith*,nameStartsWith*,organizationalUnitForEnforcement*,password*,passwordRotation*,q*,requestedGroupOnSystemOwners*,sort*,system*,systemContentAdministrators*,systemOwners*,systemTechnicalAdministrators*,technicalAdministrator*,username*,uuid*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Prepares an export of service accounts using the filtering specified in the query parameters. The URI of the export can be found in the returned Location header. This URI is valid for 2 minutes after being generated.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> postAsync([void Function(RequestConfiguration<ExportRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Prepares an export of service accounts using the filtering specified in the query parameters. The URI of the export can be found in the returned Location header. This URI is valid for 2 minutes after being generated.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<ExportRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ExportRequestBuilderPostQueryParameters>(requestConfiguration, () => ExportRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}