import 'package:kiota_abstractions/kiota_abstractions.dart';
import './get_additional_query_parameter_type.dart';

/// Query for provisioned accounts in a system. The various query parameters can be used to filter the response.
class AccountRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Only return provisioned accounts for the given accounts, specified by id. This parameter supports composition with all parameters from the accounts resource.
    List<int>? account;
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Only return provisioned accounts that are or are not destroyed.
    List<bool>? destroyed;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Only return provisioned accounts for one of the given systems, specified by id. This parameter supports composition with all parameters from the systems resource.
    List<int>? system;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'account' : account,
            'additional' : additional,
            'any' : any,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'destroyed' : destroyed,
            'exclude' : exclude,
            'id' : id,
            'modifiedSince' : modifiedSince,
            'q' : q,
            'sort' : sort,
            'system' : system,
        };
    }
}
