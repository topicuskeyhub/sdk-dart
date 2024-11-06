import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/profile/access_profile_linkable_wrapper.dart';
import './item/accessprofile_item_request_builder.dart';
import './profile_request_builder_get_query_parameters.dart';
import './profile_request_builder_post_query_parameters.dart';

/// Builds and executes requests for operations under \profile
class ProfileRequestBuilder extends BaseRequestBuilder<ProfileRequestBuilder> {
    /// Gets an item from the ApiSdk.profile.item collection
    /// <param name="accessprofileId">accessprofileId</param>
    AccessprofileItemRequestBuilder byAccessprofileId(int accessprofileId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent("accessprofileId", ()=> accessprofileId);
        return AccessprofileItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    ProfileRequestBuilder clone() {
        return ProfileRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ProfileRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
    ProfileRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile{?additional*,any*,containsAccount*,createdAfter*,createdBefore*,directory*,exclude*,id*,modifiedSince*,name*,nameContains*,nameDoesNotStartWith*,nameStartsWith*,organizationalUnit*,ownedBy*,q*,sort*,uuid*}", pathParameters) ;
    /// Instantiates a new [ProfileRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
    ProfileRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile{?additional*,any*,containsAccount*,createdAfter*,createdBefore*,directory*,exclude*,id*,modifiedSince*,name*,nameContains*,nameDoesNotStartWith*,nameStartsWith*,organizationalUnit*,ownedBy*,q*,sort*,uuid*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all access profiles in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<AccessProfileLinkableWrapper?> getAsync([Function(RequestConfiguration<ProfileRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileLinkableWrapper>(requestInfo, AccessProfileLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new access profiles and returns the newly created access profiles.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    Future<AccessProfileLinkableWrapper?> postAsync(AccessProfileLinkableWrapper body, [Function(RequestConfiguration<ProfileRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileLinkableWrapper>(requestInfo, AccessProfileLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all access profiles in Topicus KeyHub. The various query parameters can be used to filter the response.
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toGetRequestInformation([Function(RequestConfiguration<ProfileRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ProfileRequestBuilderGetQueryParameters>(requestConfiguration, () => ProfileRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        return requestInfo;
    }
    /// Creates one or more new access profiles and returns the newly created access profiles.
    /// <param name="body">body</param>
    /// <param name="requestConfiguration">requestConfiguration</param>
    RequestInformation toPostRequestInformation(AccessProfileLinkableWrapper body, [Function(RequestConfiguration<ProfileRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ProfileRequestBuilderPostQueryParameters>(requestConfiguration, () => ProfileRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=74');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=74', body);
        return requestInfo;
    }
}
