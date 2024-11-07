import 'package:kiota_abstractions/kiota_abstractions.dart';

/// Deletes the group on system identified by the id. If 'system=true' is passed as query parameter, the group is also removed from the system.
class WithGroupItemRequestBuilderDeleteQueryParameters implements AbstractQueryParameters {
    ///  When false, the group will not be removed from the system.
    bool? system;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'system' : system,
        };
    }
}
