import 'package:kiota_abstractions/kiota_abstractions.dart';

/// Returns a random generated password using the given strategy, or the default strategy if none given.
class NewpasswordRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    String? strategy;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
     Map<String, dynamic> toMap() {
        return {
            'strategy' : strategy,
        };
    }
}
