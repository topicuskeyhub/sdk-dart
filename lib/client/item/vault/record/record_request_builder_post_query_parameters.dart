import 'package:kiota_abstractions/kiota_abstractions.dart';
import './post_additional_query_parameter_type.dart';

/// Creates one or more new vault records and returns the newly created records. Secrets are specified via the additional object secret. It is required to specify the 'topicus-Vault-session' header. When updating a TOTP-secret, make sure to set 'writeTotp' field.
class RecordRequestBuilderPostQueryParameters implements AbstractQueryParameters {
    ///  Request additional information to be returned for every record.
    List<PostAdditionalQueryParameterType>? additional;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
     Map<String, dynamic> toMap() {
        return {
            'additional' : additional,
        };
    }
}
