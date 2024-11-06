import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/organization/organizational_unit.dart';
import './account/account_request_builder.dart';
import './with_organizationalunit_item_request_builder_get_query_parameters.dart';
import './with_organizationalunit_item_request_builder_put_query_parameters.dart';

/// Builds and executes requests for operations under \organizationalunit\{organizationalunitid}
class WithOrganizationalunitItemRequestBuilder extends BaseRequestBuilder<WithOrganizationalunitItemRequestBuilder> {
    ///  The account property
    AccountRequestBuilder get account {
        return AccountRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithOrganizationalunitItemRequestBuilder clone() {
        return WithOrganizationalunitItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithOrganizationalunitItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithOrganizationalunitItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/organizationalunit/{organizationalunitid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithOrganizationalunitItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithOrganizationalunitItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/organizationalunit/{organizationalunitid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the organizational unit identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<OrganizationalUnit?> getAsync([Function(RequestConfiguration<WithOrganizationalunitItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<OrganizationalUnit>(requestInfo, OrganizationalUnit.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the organizational unit identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<OrganizationalUnit?> putAsync(OrganizationalUnit body, [Function(RequestConfiguration<WithOrganizationalunitItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<OrganizationalUnit>(requestInfo, OrganizationalUnit.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the organizational unit identified by the id.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithOrganizationalunitItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithOrganizationalunitItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithOrganizationalunitItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Updates the organizational unit identified by the id.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPutRequestInformation(OrganizationalUnit body, [Function(RequestConfiguration<WithOrganizationalunitItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithOrganizationalunitItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithOrganizationalunitItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
