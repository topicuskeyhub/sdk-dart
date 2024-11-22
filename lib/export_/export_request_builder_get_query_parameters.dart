// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Downloads the export previously prepared.
class ExportRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    String? export_;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'export_' : export_,
        };
    }
}
