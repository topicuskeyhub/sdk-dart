// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/profile/access_profile_lifecycle_action_linkable_wrapper.dart';
import './item/with_lifecycleaction_item_request_builder.dart';
import './lifecycleaction_request_builder_get_query_parameters.dart';
import './lifecycleaction_request_builder_post_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \profile\{accessprofile-id}\lifecycleaction
class LifecycleactionRequestBuilder extends BaseRequestBuilder<LifecycleactionRequestBuilder> {
    /// Gets an item from the ApiSdk.profile.item.lifecycleaction.item collection
    ///  [lifecycleactionid] Unique identifier of the item
    WithLifecycleactionItemRequestBuilder byLifecycleactionid(int lifecycleactionid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('lifecycleactionid', () => lifecycleactionid);
        return WithLifecycleactionItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    LifecycleactionRequestBuilder clone() {
        return LifecycleactionRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [LifecycleactionRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    LifecycleactionRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/lifecycleaction{?accessProfile*,accessProfileOwnedBy*,additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,q*,sort*}", pathParameters) ;
    /// Instantiates a new [LifecycleactionRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    LifecycleactionRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/lifecycleaction{?accessProfile*,accessProfileOwnedBy*,additional*,any*,createdAfter*,createdBefore*,exclude*,id*,modifiedSince*,q*,sort*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query for all lifecycle actions of an access profile. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccessProfileLifecycleActionLinkableWrapper?> getAsync([void Function(RequestConfiguration<LifecycleactionRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileLifecycleActionLinkableWrapper>(requestInfo, AccessProfileLifecycleActionLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates one or more new lifecycle actions on an access profile and returns the newly created actions.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccessProfileLifecycleActionLinkableWrapper?> postAsync(AccessProfileLifecycleActionLinkableWrapper body, [void Function(RequestConfiguration<LifecycleactionRequestBuilderPostQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileLifecycleActionLinkableWrapper>(requestInfo, AccessProfileLifecycleActionLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query for all lifecycle actions of an access profile. The various query parameters can be used to filter the response.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<LifecycleactionRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<LifecycleactionRequestBuilderGetQueryParameters>(requestConfiguration, () => LifecycleactionRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=87');
        return requestInfo;
    }
    /// Creates one or more new lifecycle actions on an access profile and returns the newly created actions.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(AccessProfileLifecycleActionLinkableWrapper body, [void Function(RequestConfiguration<LifecycleactionRequestBuilderPostQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<LifecycleactionRequestBuilderPostQueryParameters>(requestConfiguration, () => LifecycleactionRequestBuilderPostQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=87');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=87', body);
        return requestInfo;
    }
}
