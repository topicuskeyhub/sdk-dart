// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/notification/notifications.dart';
import './notifications_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \account\me\notifications
class NotificationsRequestBuilder extends BaseRequestBuilder<NotificationsRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    NotificationsRequestBuilder clone() {
        return NotificationsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [NotificationsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    NotificationsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/me/notifications{?requestMailKey*,requestsToRetainIds*}", pathParameters) ;
    /// Instantiates a new [NotificationsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    NotificationsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/me/notifications{?requestMailKey*,requestsToRetainIds*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the notifications to be displayed on the dashboard of the user. At most 50 notifications are returned.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<Notifications?> getAsync([void Function(RequestConfiguration<NotificationsRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<Notifications>(requestInfo, Notifications.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the notifications to be displayed on the dashboard of the user. At most 50 notifications are returned.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<NotificationsRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<NotificationsRequestBuilderGetQueryParameters>(requestConfiguration, () => NotificationsRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=75');
        return requestInfo;
    }
}
