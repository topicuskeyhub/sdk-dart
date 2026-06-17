// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Returns the distinct groups and access profiles that have tiles to display on the launchpad for the current account. Used to populate the launchpad filter.
class ContainersRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    String? filter;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'filter' : filter,
        };
    }
}
