// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error_report.dart';
import '../../models/organization/organizational_unit.dart';
import './account/account_request_builder.dart';
import './client/client_request_builder.dart';
import './with_organizationalunit_item_request_builder_get_query_parameters.dart';
import './with_organizationalunit_item_request_builder_put_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \organizationalunit\{organizationalunitid}
class WithOrganizationalunitItemRequestBuilder extends BaseRequestBuilder<WithOrganizationalunitItemRequestBuilder> {
    ///  The account property
    AccountRequestBuilder get account {
        return AccountRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The client property
    ClientRequestBuilder get client {
        return ClientRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithOrganizationalunitItemRequestBuilder clone() {
        return WithOrganizationalunitItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithOrganizationalunitItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithOrganizationalunitItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/organizationalunit/{organizationalunitid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithOrganizationalunitItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithOrganizationalunitItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/organizationalunit/{organizationalunitid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the organizational unit identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<OrganizationalUnit?> getAsync([void Function(RequestConfiguration<WithOrganizationalunitItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<OrganizationalUnit>(requestInfo, OrganizationalUnit.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the organizational unit identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<OrganizationalUnit?> putAsync(OrganizationalUnit body, [void Function(RequestConfiguration<WithOrganizationalunitItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<OrganizationalUnit>(requestInfo, OrganizationalUnit.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the organizational unit identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithOrganizationalunitItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithOrganizationalunitItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithOrganizationalunitItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=77');
        return requestInfo;
    }
    /// Updates the organizational unit identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPutRequestInformation(OrganizationalUnit body, [void Function(RequestConfiguration<WithOrganizationalunitItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithOrganizationalunitItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithOrganizationalunitItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=77');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=77', body);
        return requestInfo;
    }
}
