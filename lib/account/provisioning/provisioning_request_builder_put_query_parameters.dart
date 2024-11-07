import 'package:kiota_abstractions/kiota_abstractions.dart';

/// Updates the provisioning for the current user. This updates the end time for the given groups. If 'ignoreErrors' is set, errors do not cause the update to abort if errors are detected. To enable groups with auditing enabled the reason query parameter is required.
class ProvisioningRequestBuilderPutQueryParameters implements AbstractQueryParameters {
    String? reason;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'reason' : reason,
        };
    }
}
