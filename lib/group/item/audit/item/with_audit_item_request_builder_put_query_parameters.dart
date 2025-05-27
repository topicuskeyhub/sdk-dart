// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './put_additional_query_parameter_type.dart';

/// auto generated
/// Updates the audit for a group identified by the id. Only audits in draft can be updated.
class WithAuditItemRequestBuilderPutQueryParameters implements AbstractQueryParameters {
    ///  Request additional information to be returned for every record.
    List<PutAdditionalQueryParameterType>? additional;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'additional' : additional,
        };
    }
}
