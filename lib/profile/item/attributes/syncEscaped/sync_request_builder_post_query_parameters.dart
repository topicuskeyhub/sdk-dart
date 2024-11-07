import 'package:kiota_abstractions/kiota_abstractions.dart';

class SyncRequestBuilderPostQueryParameters implements AbstractQueryParameters {
    int? account;
    bool? write;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'account' : account,
            'write' : write,
        };
    }
}
