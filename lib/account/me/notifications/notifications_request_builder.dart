import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/error_report.dart';
import '../../../models/notification/notifications.dart';
import './notifications_request_builder_get_query_parameters.dart';

/// Builds and executes requests for operations under \account\me\notifications
class NotificationsRequestBuilder extends BaseRequestBuilder<NotificationsRequestBuilder> {
    /// Clones the requestbuilder.
    @override
     NotificationsRequestBuilder clone() {
        return NotificationsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [NotificationsRequestBuilder] and sets the default values.
    /// <param name="pathParameters">pathParameters</param>
    /// <param name="requestAdapter">requestAdapter</param>
     NotificationsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/me/notifications{?requestMailKey*,requestsToRetainIds*}", pathParameters) ;
    /// Instantiates a new [NotificationsRequestBuilder] and sets the default values.
    /// <param name="rawUrl">rawUrl</param>
    /// <param name="requestAdapter">requestAdapter</param>
     NotificationsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/account/me/notifications{?requestMailKey*,requestsToRetainIds*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the notifications to be displayed on the dashboard of the user. At most 50 notifications are returned.
    /// <param name="requestConfiguration">requestConfiguration</param>
     Future<Notifications?> getAsync([Function(RequestConfiguration<NotificationsRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        Map<String, ParsableFactory<Parsable>> errorMapping = {
            'XXX' :  ErrorReport.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<Notifications>(requestInfo, Notifications.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the notifications to be displayed on the dashboard of the user. At most 50 notifications are returned.
    /// <param name="requestConfiguration">requestConfiguration</param>
     RequestInformation toGetRequestInformation([Function(RequestConfiguration<NotificationsRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<NotificationsRequestBuilderGetQueryParameters>(requestConfiguration, () => NotificationsRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/vnd.topicus.keyhub+json;version=73');
        return requestInfo;
    }
}
