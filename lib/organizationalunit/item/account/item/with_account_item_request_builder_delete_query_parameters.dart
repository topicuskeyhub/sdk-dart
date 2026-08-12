// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Removes the specified account from the organizational unit. When 'firePendingLifecycleEvents=true' is passed as query parameter, the pending access profile lifecycle events of the account for profiles owned by this organizational unit are fired (delivering their mail) before removal instead of being cancelled.
class WithAccountItemRequestBuilderDeleteQueryParameters implements AbstractQueryParameters {
    ///  When true, the account's pending access profile lifecycle events for profiles owned by this organizational unit are fired before removal instead of being cancelled.
    bool? firePendingLifecycleEvents;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'firePendingLifecycleEvents' : firePendingLifecycleEvents,
        };
    }
}
