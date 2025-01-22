// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/directory/account_directory_linkable_wrapper.dart';
import '../models/error_report.dart';
import './directory_request_builder_get_query_parameters.dart';
import './directory_request_builder_post_query_parameters.dart';
import './item/with_directory_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \directory
class DirectoryRequestBuilder extends BaseRequestBuilder<DirectoryRequestBuilder> {
    /// Gets an item from the ApiSdk.directory.item collection
    ///  [directoryid] Unique identifier of the item
    WithDirectoryItemRequestBuilder byDirectoryid(int directoryid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('directoryid', () => directoryid);
        return WithDirectoryItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    DirectoryRequestBuilder clone() {
        return DirectoryRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [DirectoryRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DirectoryRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/directory{?active*,additional*,any*,baseOrganizationalUnit*,createdAfter*,createdBefore*,defaultDirectory*,exclude*,expiredCertificate*,helpdeskGroup*,id*,isNotProvisionedDirectory*,maintenanceDirectory*,modifiedSince*,name*,nameContains*,nameDoesNotStartWith*,nameStartsWith*,oidcVender*,ownedBy*,q*,sort*,tls*,type*,uuid*}", pathParameters) ;
    /// Instantiates a new [DirectoryRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DirectoryRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/directory{?active*,additional*,any*,baseOrganizationalUnit*,createdAfter*,createdBefore*,defaultDirectory*,exclude*,expiredCertificate*,helpdeskGroup*,id*,isNotProvisionedDirectory*,maintenanceDirectory*,modifiedSince*,name*,nameContains*,nameDoesNotStartWith*,nameStartsWith*,oidcVender*,ownedBy*,q*,sort*,tls*,type*,uuid*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all directories in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccountDirectoryLinkableWrapper?> getAsync([void Function(RequestConfiguration<DirectoryRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountDirectoryLinkableWrapper>(requestInfo, AccountDirectoryLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new directories and returns the newly created directories.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccountDirectoryLinkableWrapper?> postAsync(AccountDirectoryLinkableWrapper body, [void Function(RequestConfiguration<DirectoryRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountDirectoryLinkableWrapper>(requestInfo, AccountDirectoryLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all directories in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DirectoryRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DirectoryRequestBuilderGetQueryParameters>(requestConfiguration, () => DirectoryRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=76');
        return requestInfo;
    }
    /// Creates one or more new directories and returns the newly created directories.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(AccountDirectoryLinkableWrapper body, [void Function(RequestConfiguration<DirectoryRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DirectoryRequestBuilderPostQueryParameters>(requestConfiguration, () => DirectoryRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=76');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=76', body);
        return requestInfo;
    }
}
