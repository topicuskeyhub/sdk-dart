// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Returns the notifications to be displayed on the dashboard of the user. At most 50 notifications are returned.
class NotificationsRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    String? lang;
    String? requestMailKey;
    List<int>? requestsToRetainIds;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'lang' : lang,
            'requestMailKey' : requestMailKey,
            'requestsToRetainIds' : requestsToRetainIds,
        };
    }
}
