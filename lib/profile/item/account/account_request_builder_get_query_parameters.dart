import 'package:kiota_abstractions/kiota_abstractions.dart';
import './get_additional_query_parameter_type.dart';

/// Queries over all members of an access profile. The various query parameters can be used to filter the response.
class AccountRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Filter access profile memberships on the given access profiles, specified by id. This parameter supports composition with all parameters from the access profile resource.
    List<int>? accessProfile;
    ///  Filter access profile memberships on the given accounts, specified by id. This parameter supports composition with all parameters from the account resource.
    List<int>? account;
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
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter access profile memberships for which the given group is owner, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? ownedBy;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'accessProfile' : accessProfile,
            'account' : account,
            'additional' : additional,
            'any' : any,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'exclude' : exclude,
            'id' : id,
            'modifiedSince' : modifiedSince,
            'ownedBy' : ownedBy,
            'q' : q,
            'sort' : sort,
        };
    }
}
