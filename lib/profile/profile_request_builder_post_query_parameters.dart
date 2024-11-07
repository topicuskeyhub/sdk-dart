import 'package:kiota_abstractions/kiota_abstractions.dart';
import './post_additional_query_parameter_type.dart';

/// Creates one or more new access profiles and returns the newly created access profiles.
class ProfileRequestBuilderPostQueryParameters implements AbstractQueryParameters {
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
