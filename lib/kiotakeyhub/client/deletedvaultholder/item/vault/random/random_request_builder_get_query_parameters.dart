import 'package:kiota_abstractions/kiota_abstractions.dart';

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
