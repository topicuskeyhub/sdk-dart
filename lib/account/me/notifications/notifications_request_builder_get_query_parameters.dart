import 'package:kiota_abstractions/kiota_abstractions.dart';

/// Returns the notifications to be displayed on the dashboard of the user. At most 50 notifications are returned.
class NotificationsRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    String? requestMailKey;
    List<int>? requestsToRetainIds;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'requestMailKey' : requestMailKey,
            'requestsToRetainIds' : requestsToRetainIds,
        };
    }
}
