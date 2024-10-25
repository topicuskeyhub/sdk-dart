import 'package:kiota_abstractions/kiota_abstractions.dart';

/// Downloads the export previously prepared.
class ExportRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    String? exportEscaped;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
     Map<String, dynamic> toMap() {
        return {
            'exportEscaped' : exportEscaped,
        };
    }
}
