import 'package:kiota_abstractions/kiota_abstractions.dart';
import './get_additional_query_parameter_type.dart';

/// Query for all global trusted certificates in Topicus KeyHub. The various query parameters can be used to filter the response.
class CertificateRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Filter certificates on the exact alias.
    List<String>? alias;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Only return certificates that are expired at the given instant.
    List<DateTime>? expired;
    ///  Always true, even if not specified.
    List<bool>? global;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Filter results on one or more UUIDs.
    List<String>? uuid;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'additional' : additional,
            'alias' : alias,
            'any' : any,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'exclude' : exclude,
            'expired' : expired,
            'global' : global,
            'id' : id,
            'modifiedSince' : modifiedSince,
            'q' : q,
            'sort' : sort,
            'uuid' : uuid,
        };
    }
}
