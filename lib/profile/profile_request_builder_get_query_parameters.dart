import 'package:kiota_abstractions/kiota_abstractions.dart';
import './get_additional_query_parameter_type.dart';

/// Query for all access profiles in Topicus KeyHub. The various query parameters can be used to filter the response.
class ProfileRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Filter the access profiles by membership of accounts, specified by id. This parameter supports composition with all parameters from the account resource.
    List<int>? containsAccount;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter access profiles on the exact name.
    List<String>? name;
    ///  Search access profiles on (part of) the name or uuid.
    List<String>? nameContains;
    ///  Filter access profiles with which the name does not start with the given values.
    List<String>? nameDoesNotStartWith;
    ///  Filter access profiles on the start of the name.
    List<String>? nameStartsWith;
    ///  Filter access profiles on organizational units of their owning group, specified by id. This parameter supports composition with all parameters from the organizational unit resource.
    List<int>? organizationalUnit;
    ///  Filter the access profiles for which the given group is owner,specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? ownedBy;
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
            'any' : any,
            'containsAccount' : containsAccount,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'exclude' : exclude,
            'id' : id,
            'modifiedSince' : modifiedSince,
            'name' : name,
            'nameContains' : nameContains,
            'nameDoesNotStartWith' : nameDoesNotStartWith,
            'nameStartsWith' : nameStartsWith,
            'organizationalUnit' : organizationalUnit,
            'ownedBy' : ownedBy,
            'q' : q,
            'sort' : sort,
            'uuid' : uuid,
        };
    }
}
