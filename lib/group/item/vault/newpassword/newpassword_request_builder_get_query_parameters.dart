// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
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
