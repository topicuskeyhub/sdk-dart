// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/identity/account_attribute_update_operation.dart';

/// auto generated
class SyncRequestBuilderPostQueryParameters implements AbstractQueryParameters {
    int? account;
    AccountAttributeUpdateOperation? operation;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'account' : account,
            'operation' : operation,
        };
    }
}
