import 'package:kiota_abstractions/kiota_abstractions.dart';
import './put_additional_query_parameter_type.dart';

/// Updates the internal accounts within a directory identified by the id.
class WithInternalaccountItemRequestBuilderPutQueryParameters implements AbstractQueryParameters {
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