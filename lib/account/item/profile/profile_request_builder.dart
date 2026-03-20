// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/profile/account_access_profile_linkable_wrapper.dart';
import './item/with_profile_item_request_builder.dart';
import './profile_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \account\{accountid}\profile
class ProfileRequestBuilder extends BaseRequestBuilder<ProfileRequestBuilder> {
    /// Gets an item from the ApiSdk.account.item.profile.item collection
    ///  [profileid] Unique identifier of the item
    WithProfileItemRequestBuilder byProfileid(int profileid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('profileid', () => profileid);
        return WithProfileItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    ProfileRequestBuilder clone() {
        return ProfileRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ProfileRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ProfileRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/profile{?accessProfile*,account*,additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,organizationalUnit*,ownedBy*,q*,sort*}", pathParameters) ;
    /// Instantiates a new [ProfileRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ProfileRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/{accountid}/profile{?accessProfile*,account*,additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,organizationalUnit*,ownedBy*,q*,sort*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Queries over all access profile the account is member of. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccountAccessProfileLinkableWrapper?> getAsync([void Function(RequestConfiguration<ProfileRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccountAccessProfileLinkableWrapper>(requestInfo, AccountAccessProfileLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Queries over all access profile the account is member of. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<ProfileRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ProfileRequestBuilderGetQueryParameters>(requestConfiguration, () => ProfileRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=84');
        return requestInfo;
    }
}
