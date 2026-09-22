// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import '../../../../models/profile/access_profile_lifecycle_event.dart';
import './cancel/cancel_request_builder.dart';
import './with_lifecycleevent_item_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \profile\{accessprofile-id}\lifecycleevent\{lifecycleeventid}
class WithLifecycleeventItemRequestBuilder extends BaseRequestBuilder<WithLifecycleeventItemRequestBuilder> {
    ///  The cancel property
    CancelRequestBuilder get cancel {
        return CancelRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithLifecycleeventItemRequestBuilder clone() {
        return WithLifecycleeventItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithLifecycleeventItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithLifecycleeventItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/lifecycleevent/{lifecycleeventid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithLifecycleeventItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithLifecycleeventItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/lifecycleevent/{lifecycleeventid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the lifecycle event identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccessProfileLifecycleEvent?> getAsync([void Function(RequestConfiguration<WithLifecycleeventItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileLifecycleEvent>(requestInfo, AccessProfileLifecycleEvent.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the lifecycle event identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithLifecycleeventItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithLifecycleeventItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithLifecycleeventItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=88');
        return requestInfo;
    }
}
