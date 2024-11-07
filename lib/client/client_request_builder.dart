import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../models/client/client_application_linkable_wrapper.dart';
import '../models/error_report.dart';
import './client_request_builder_get_query_parameters.dart';
import './client_request_builder_post_query_parameters.dart';
import './item/with_client_item_request_builder.dart';
import './me/me_request_builder.dart';
import './vault/vault_request_builder.dart';

/// Builds and executes requests for operations under \client
class ClientRequestBuilder extends BaseRequestBuilder<ClientRequestBuilder> {
    ///  The me property
    MeRequestBuilder get me {
        return MeRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The vault property
    VaultRequestBuilder get vault {
        return VaultRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the ApiSdk.client.item collection
    /// <param name="clientid">clientid</param>
    WithClientItemRequestBuilder byClientid(int clientid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("clientid", ()=> clientid);
        return WithClientItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    ClientRequestBuilder clone() {
        return ClientRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ClientRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    ClientRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client{?additional*,any*,clientId*,createdAfter*,createdBefore*,exclude*,expiredCertificate*,group*,id*,isProvisionedInternalLDAP*,modifiedSince*,name*,nameContains*,nameDoesNotStartWith*,nameStartsWith*,notInGroup*,organizationalUnitForEnforcement*,ownedBy*,q*,sharedSecret*,sort*,technicalAdministrator*,type*,useClientCredentials*,uuid*,vault*,withPermission*,withPermissionForOwningGroup*,withRequestedPermissionForOwningGroup*}", pathParameters) ;
    /// Instantiates a new [ClientRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    ClientRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/client{?additional*,any*,clientId*,createdAfter*,createdBefore*,exclude*,expiredCertificate*,group*,id*,isProvisionedInternalLDAP*,modifiedSince*,name*,nameContains*,nameDoesNotStartWith*,nameStartsWith*,notInGroup*,organizationalUnitForEnforcement*,ownedBy*,q*,sharedSecret*,sort*,technicalAdministrator*,type*,useClientCredentials*,uuid*,vault*,withPermission*,withPermissionForOwningGroup*,withRequestedPermissionForOwningGroup*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all clients in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<ClientApplicationLinkableWrapper?> getAsync([Function(RequestConfiguration<ClientRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ClientApplicationLinkableWrapper>(requestInfo, ClientApplicationLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new clients and returns the newly created clients.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<ClientApplicationLinkableWrapper?> postAsync(ClientApplicationLinkableWrapper body, [Function(RequestConfiguration<ClientRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ClientApplicationLinkableWrapper>(requestInfo, ClientApplicationLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all clients in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<ClientRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ClientRequestBuilderGetQueryParameters>(requestConfiguration, () => ClientRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Creates one or more new clients and returns the newly created clients.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPostRequestInformation(ClientApplicationLinkableWrapper body, [Function(RequestConfiguration<ClientRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ClientRequestBuilderPostQueryParameters>(requestConfiguration, () => ClientRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
