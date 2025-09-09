// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/error_report.dart';
import '../models/profile/access_profile_group_linkable_wrapper.dart';
import './item/with_profilegroup_item_request_builder.dart';
import './profilegroup_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \profilegroup
class ProfilegroupRequestBuilder extends BaseRequestBuilder<ProfilegroupRequestBuilder> {
    /// Gets an item from the ApiSdk.profilegroup.item collection
    ///  [profilegroupid] Unique identifier of the item
    WithProfilegroupItemRequestBuilder byProfilegroupid(int profilegroupid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('profilegroupid', () => profilegroupid);
        return WithProfilegroupItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    ProfilegroupRequestBuilder clone() {
        return ProfilegroupRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ProfilegroupRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ProfilegroupRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profilegroup{?accessProfile*,additional*,any*,createdAfter*,createdBefore*,exclude*,group*,id*,modifiedSince*,ownedBy*,q*,sort*}", pathParameters) ;
    /// Instantiates a new [ProfilegroupRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ProfilegroupRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profilegroup{?accessProfile*,additional*,any*,createdAfter*,createdBefore*,exclude*,group*,id*,modifiedSince*,ownedBy*,q*,sort*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all access profile group links in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccessProfileGroupLinkableWrapper?> getAsync([void Function(RequestConfiguration<ProfilegroupRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileGroupLinkableWrapper>(requestInfo, AccessProfileGroupLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all access profile group links in Topicus KeyHub. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<ProfilegroupRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ProfilegroupRequestBuilderGetQueryParameters>(requestConfiguration, () => ProfilegroupRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=80');
        return requestInfo;
    }
}
