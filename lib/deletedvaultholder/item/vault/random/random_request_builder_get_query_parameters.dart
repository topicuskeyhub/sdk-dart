// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Returns a random generated value of the given length, default 24.
class RandomRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    int? length;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'length' : length,
        };
    }
}
