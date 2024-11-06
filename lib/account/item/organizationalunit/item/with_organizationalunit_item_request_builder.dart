import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import '../../../../models/organization/account_organizational_unit.dart';
import './with_organizationalunit_item_request_builder_get_query_parameters.dart';

/// Builds and executes requests for operations under \account\{accountid}\organizationalunit\{organizationalunitid}
class WithOrganizationalunitItemRequestBuilder extends BaseRequestBuilder<WithOrganizationalunitItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithOrganizationalunitItemRequestBuilder clone() {
        return WithOrganizationalunitItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithOrganizationalunitItemRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithOrganizationalunitItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/organizationalunit/{organizationalunitid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithOrganizationalunitItemRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    WithOrganizationalunitItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/organizationalunit/{organizationalunitid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the single organizational unit membership for the account.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<AccountOrganizationalUnit?> getAsync([Function(RequestConfiguration<WithOrganizationalunitItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountOrganizationalUnit>(requestInfo, AccountOrganizationalUnit.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the single organizational unit membership for the account.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<WithOrganizationalunitItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithOrganizationalunitItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithOrganizationalunitItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
}
