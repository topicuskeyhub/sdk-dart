// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Returns the status of provisioning for the current user. The groups are filtered by the specified filter or group UUID.
class ProvisioningRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    String? filter;
    String? groupUuid;
    bool? loadAll;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'filter' : filter,
            'groupUuid' : groupUuid,
            'loadAll' : loadAll,
        };
    }
}
