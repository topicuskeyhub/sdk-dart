// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Query tiles for display on the launchpad. This returns a normalized view over the tiles, per group or access profile. A single tile can be returned multiple times if access is given via multiple groups or access profiles.
class DisplayRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    int? accessProfile;
    String? filter;
    int? group;
    String? modifiedSince;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'accessProfile' : accessProfile,
            'filter' : filter,
            'group' : group,
            'modifiedSince' : modifiedSince,
        };
    }
}
