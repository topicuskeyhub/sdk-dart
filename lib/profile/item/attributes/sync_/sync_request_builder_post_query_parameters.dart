// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
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
