// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './post_additional_query_parameter_type.dart';

/// auto generated
/// Creates one or more new clients and returns the newly created clients.
class ClientRequestBuilderPostQueryParameters implements AbstractQueryParameters {
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
