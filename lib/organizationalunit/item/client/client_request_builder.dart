// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/organization/organizational_unit_client_application_linkable_wrapper.dart';
import './client_request_builder_get_query_parameters.dart';
import './client_request_builder_post_query_parameters.dart';
import './item/with_client_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \organizationalunit\{organizationalunitid}\client
class ClientRequestBuilder extends BaseRequestBuilder<ClientRequestBuilder> {
    /// Gets an item from the ApiSdk.organizationalunit.item.client.item collection
    ///  [clientid] Unique identifier of the item
    WithClientItemRequestBuilder byClientid(int clientid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('clientid', () => clientid);
        return WithClientItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    ClientRequestBuilder clone() {
        return ClientRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ClientRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ClientRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/organizationalunit/{organizationalunitid}/client{?additional*,any*,client*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,organizationalUnit*,organizationalUnitOwnedBy*,q*,sort*,withPermissionForOwningGroup*,withRequestedPermissionForOwningGroup*}", pathParameters) ;
    /// Instantiates a new [ClientRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ClientRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/organizationalunit/{organizationalunitid}/client{?additional*,any*,client*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,organizationalUnit*,organizationalUnitOwnedBy*,q*,sort*,withPermissionForOwningGroup*,withRequestedPermissionForOwningGroup*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Queries over client applications that are member of the organizational unit. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<OrganizationalUnitClientApplicationLinkableWrapper?> getAsync([void Function(RequestConfiguration<ClientRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<OrganizationalUnitClientApplicationLinkableWrapper>(requestInfo, OrganizationalUnitClientApplicationLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Adds one or more client applications to the organizational unit and returns the newly created memberships.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<OrganizationalUnitClientApplicationLinkableWrapper?> postAsync(OrganizationalUnitClientApplicationLinkableWrapper body, [void Function(RequestConfiguration<ClientRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<OrganizationalUnitClientApplicationLinkableWrapper>(requestInfo, OrganizationalUnitClientApplicationLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Queries over client applications that are member of the organizational unit. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<ClientRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ClientRequestBuilderGetQueryParameters>(requestConfiguration, () => ClientRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=77');
        return requestInfo;
    }
    /// Adds one or more client applications to the organizational unit and returns the newly created memberships.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(OrganizationalUnitClientApplicationLinkableWrapper body, [void Function(RequestConfiguration<ClientRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ClientRequestBuilderPostQueryParameters>(requestConfiguration, () => ClientRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=77');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=77', body);
        return requestInfo;
    }
}
