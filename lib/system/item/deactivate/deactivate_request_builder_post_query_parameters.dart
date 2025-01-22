// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/provisioning/deprovision_action.dart';

/// auto generated
/// Deactivates the provisioned system specified by the given id. The action runs in the background.
class DeactivateRequestBuilderPostQueryParameters implements AbstractQueryParameters {
    DeprovisionAction? action;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'action' : action,
        };
    }
}
