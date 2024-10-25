import 'package:kiota_abstractions/kiota_abstractions.dart';
import './get_additional_query_parameter_type.dart';

/// Query for all groups for a service system in Topicus KeyHub. The various query parameters can be used to filter the response.
class GroupRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Filter the service account groups on the groups on systems, specified by id. This parameter supports composition with all parameters from the groups on system resource.
    List<int>? groupOnSystem;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Filter the service account groups on the service accounts, specified by id. This parameter supports composition with all parameters from the service account resource.
    List<int>? serviceAccount;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
     Map<String, dynamic> toMap() {
        return {
            'additional' : additional,
            'any' : any,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'exclude' : exclude,
            'groupOnSystem' : groupOnSystem,
            'id' : id,
            'modifiedSince' : modifiedSince,
            'q' : q,
            'serviceAccount' : serviceAccount,
            'sort' : sort,
        };
    }
}
