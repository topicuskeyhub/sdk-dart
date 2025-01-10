// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/profile/access_profile_linkable_wrapper.dart';
import './item/accessprofile_item_request_builder.dart';
import './profile_request_builder_get_query_parameters.dart';
import './profile_request_builder_post_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \profile
class ProfileRequestBuilder extends BaseRequestBuilder<ProfileRequestBuilder> {
    /// Gets an item from the ApiSdk.profile.item collection
    ///  [accessprofileId] Unique identifier of the item
    AccessprofileItemRequestBuilder byAccessprofileId(int accessprofileId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('accessprofile%2Did', () => accessprofileId);
        return AccessprofileItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    ProfileRequestBuilder clone() {
        return ProfileRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ProfileRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ProfileRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile{?additional*,any*,containsAccount*,createdAfter*,createdBefore*,directory*,exclude*,id*,modifiedSince*,name*,nameContains*,nameDoesNotStartWith*,nameStartsWith*,organizationalUnit*,ownedBy*,q*,sort*,uuid*}", pathParameters) ;
    /// Instantiates a new [ProfileRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ProfileRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile{?additional*,any*,containsAccount*,createdAfter*,createdBefore*,directory*,exclude*,id*,modifiedSince*,name*,nameContains*,nameDoesNotStartWith*,nameStartsWith*,organizationalUnit*,ownedBy*,q*,sort*,uuid*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all access profiles in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccessProfileLinkableWrapper?> getAsync([void Function(RequestConfiguration<ProfileRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileLinkableWrapper>(requestInfo, AccessProfileLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new access profiles and returns the newly created access profiles.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccessProfileLinkableWrapper?> postAsync(AccessProfileLinkableWrapper body, [void Function(RequestConfiguration<ProfileRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileLinkableWrapper>(requestInfo, AccessProfileLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all access profiles in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<ProfileRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ProfileRequestBuilderGetQueryParameters>(requestConfiguration, () => ProfileRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=75');
        return requestInfo;
    }
    /// Creates one or more new access profiles and returns the newly created access profiles.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(AccessProfileLinkableWrapper body, [void Function(RequestConfiguration<ProfileRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ProfileRequestBuilderPostQueryParameters>(requestConfiguration, () => ProfileRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=75');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=75', body);
        return requestInfo;
    }
}
