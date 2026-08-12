// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Removes the specified internal accounts from a directory, including the associated KeyHub account. When 'firePendingLifecycleEvents=true' is passed as query parameter, the account's pending access profile lifecycle events are fired (delivering their mail) before deletion instead of being cancelled.
class WithInternalaccountItemRequestBuilderDeleteQueryParameters implements AbstractQueryParameters {
    ///  When true, the account's pending access profile lifecycle events are fired before deletion instead of being cancelled.
    bool? firePendingLifecycleEvents;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'firePendingLifecycleEvents' : firePendingLifecycleEvents,
        };
    }
}
