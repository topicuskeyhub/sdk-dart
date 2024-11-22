// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Query tiles for display on the launchpad. This returns a normalized view over the tiles, per group. A single tile can be returned multiple times if access is given via multiple groups.
class DisplayRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    String? filter;
    int? group;
    String? modifiedSince;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'filter' : filter,
            'group' : group,
            'modifiedSince' : modifiedSince,
        };
    }
}
