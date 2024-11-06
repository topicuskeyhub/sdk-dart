import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../models/directory/account_directory_linkable_wrapper.dart';
import '../models/error_report.dart';
import './directory_request_builder_get_query_parameters.dart';
import './directory_request_builder_post_query_parameters.dart';
import './item/with_directory_item_request_builder.dart';

/// Builds and executes requests for operations under \directory
class DirectoryRequestBuilder extends BaseRequestBuilder<DirectoryRequestBuilder> {
    /// Gets an item from the ApiSdk.directory.item collection
    /// <param name="directoryid">directoryid</param>
    WithDirectoryItemRequestBuilder byDirectoryid(int directoryid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("directoryid", ()=> directoryid);
        return WithDirectoryItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    DirectoryRequestBuilder clone() {
        return DirectoryRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [DirectoryRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    DirectoryRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/directory{?active*,additional*,any*,baseOrganizationalUnit*,createdAfter*,createdBefore*,defaultDirectory*,exclude*,expiredCertificate*,helpdeskGroup*,id*,isNotProvisionedDirectory*,maintenanceDirectory*,modifiedSince*,name*,nameContains*,nameDoesNotStartWith*,nameStartsWith*,oidcVender*,ownedBy*,q*,sort*,tls*,type*,uuid*}", pathParameters) ;
    /// Instantiates a new [DirectoryRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    DirectoryRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/directory{?active*,additional*,any*,baseOrganizationalUnit*,createdAfter*,createdBefore*,defaultDirectory*,exclude*,expiredCertificate*,helpdeskGroup*,id*,isNotProvisionedDirectory*,maintenanceDirectory*,modifiedSince*,name*,nameContains*,nameDoesNotStartWith*,nameStartsWith*,oidcVender*,ownedBy*,q*,sort*,tls*,type*,uuid*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all directories in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<AccountDirectoryLinkableWrapper?> getAsync([Function(RequestConfiguration<DirectoryRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountDirectoryLinkableWrapper>(requestInfo, AccountDirectoryLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new directories and returns the newly created directories.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<AccountDirectoryLinkableWrapper?> postAsync(AccountDirectoryLinkableWrapper body, [Function(RequestConfiguration<DirectoryRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountDirectoryLinkableWrapper>(requestInfo, AccountDirectoryLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all directories in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<DirectoryRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DirectoryRequestBuilderGetQueryParameters>(requestConfiguration, () => DirectoryRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Creates one or more new directories and returns the newly created directories.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPostRequestInformation(AccountDirectoryLinkableWrapper body, [Function(RequestConfiguration<DirectoryRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DirectoryRequestBuilderPostQueryParameters>(requestConfiguration, () => DirectoryRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
