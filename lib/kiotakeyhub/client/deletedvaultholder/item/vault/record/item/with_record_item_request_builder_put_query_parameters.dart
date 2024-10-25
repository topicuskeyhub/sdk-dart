import 'package:kiota_abstractions/kiota_abstractions.dart';
import './put_additional_query_parameter_type.dart';

/// Updates the vault record identified by the id. To update the secrets, the 'secret' additional object must be used, in addition to specifying the 'topicus-Vault-session' header. When updating a TOTP-secret, make sure to set 'writeTotp' field.
class WithRecordItemRequestBuilderPutQueryParameters implements AbstractQueryParameters {
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
