// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/profile/access_profile_lifecycle_event_linkable_wrapper.dart';
import './item/with_lifecycleevent_item_request_builder.dart';
import './lifecycleevent_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \profile\{accessprofile-id}\lifecycleevent
class LifecycleeventRequestBuilder extends BaseRequestBuilder<LifecycleeventRequestBuilder> {
    /// Gets an item from the ApiSdk.profile.item.lifecycleevent.item collection
    ///  [lifecycleeventid] Unique identifier of the item
    WithLifecycleeventItemRequestBuilder byLifecycleeventid(int lifecycleeventid) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('lifecycleeventid', () => lifecycleeventid);
        return WithLifecycleeventItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    LifecycleeventRequestBuilder clone() {
        return LifecycleeventRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [LifecycleeventRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    LifecycleeventRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/lifecycleevent{?accessProfile*,accessProfileOwnedBy*,account*,additional*,anchor*,any*,createdAfter*,createdBefore*,dueOnOrBefore*,exclude*,id*,modifiedSince*,q*,sort*,status*}", pathParameters) ;
    /// Instantiates a new [LifecycleeventRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    LifecycleeventRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/lifecycleevent{?accessProfile*,accessProfileOwnedBy*,account*,additional*,anchor*,any*,createdAfter*,createdBefore*,dueOnOrBefore*,exclude*,id*,modifiedSince*,q*,sort*,status*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Query over the scheduled, fired, failed and cancelled lifecycle events of an access profile. The various query parameters can be used to filter by account, status or anchor.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccessProfileLifecycleEventLinkableWrapper?> getAsync([void Function(RequestConfiguration<LifecycleeventRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileLifecycleEventLinkableWrapper>(requestInfo, AccessProfileLifecycleEventLinkableWrapper.createFromDiscriminatorValue, errorMapping);
    }
    /// Query over the scheduled, fired, failed and cancelled lifecycle events of an access profile. The various query parameters can be used to filter by account, status or anchor.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<LifecycleeventRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<LifecycleeventRequestBuilderGetQueryParameters>(requestConfiguration, () => LifecycleeventRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=87');
        return requestInfo;
    }
}
