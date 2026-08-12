// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error_report.dart';
import '../../../../models/profile/access_profile_lifecycle_action.dart';
import './with_lifecycleaction_item_request_builder_get_query_parameters.dart';
import './with_lifecycleaction_item_request_builder_put_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \profile\{accessprofile-id}\lifecycleaction\{lifecycleactionid}
class WithLifecycleactionItemRequestBuilder extends BaseRequestBuilder<WithLifecycleactionItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithLifecycleactionItemRequestBuilder clone() {
        return WithLifecycleactionItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithLifecycleactionItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithLifecycleactionItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/lifecycleaction/{lifecycleactionid}{?additional*}", pathParameters) ;
    /// Instantiates a new [WithLifecycleactionItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithLifecycleactionItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/profile/{accessprofile%2Did}/lifecycleaction/{lifecycleactionid}{?additional*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Deletes the lifecycle action identified by the id and cancels its pending events.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<void> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.sendNoContent(requestInfo, errorMapping);
    }
    /// Returns the lifecycle action identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccessProfileLifecycleAction?> getAsync([void Function(RequestConfiguration<WithLifecycleactionItemRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileLifecycleAction>(requestInfo, AccessProfileLifecycleAction.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the lifecycle action identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AccessProfileLifecycleAction?> putAsync(AccessProfileLifecycleAction body, [void Function(RequestConfiguration<WithLifecycleactionItemRequestBuilderPutQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPutRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AccessProfileLifecycleAction>(requestInfo, AccessProfileLifecycleAction.createFromDiscriminatorValue, errorMapping);
    }
    /// Deletes the lifecycle action identified by the id and cancels its pending events.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=87');
        return requestInfo;
    }
    /// Returns the lifecycle action identified by the id.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<WithLifecycleactionItemRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithLifecycleactionItemRequestBuilderGetQueryParameters>(requestConfiguration, () => WithLifecycleactionItemRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=87');
        return requestInfo;
    }
    /// Updates the lifecycle action identified by the id.
    ///  [body] The request body
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPutRequestInformation(AccessProfileLifecycleAction body, [void Function(RequestConfiguration<WithLifecycleactionItemRequestBuilderPutQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.put, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<WithLifecycleactionItemRequestBuilderPutQueryParameters>(requestConfiguration, () => WithLifecycleactionItemRequestBuilderPutQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=87');
        requestInfo.setContentFromParsable(requestAdapter, 'application/vnd.topicus.keyhub+json;version=87', body);
        return requestInfo;
    }
}
