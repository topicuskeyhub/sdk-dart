import 'package:kiota_abstractions/kiota_abstractions.dart';

/// Returns the status of provisioning for the current user. The groups are filtered by the specified filter or group UUID.
class ProvisioningRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    String? filter;
    String? groupUuid;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
     Map<String, dynamic> toMap() {
        return {
            'filter' : filter,
            'groupUuid' : groupUuid,
        };
    }
}
