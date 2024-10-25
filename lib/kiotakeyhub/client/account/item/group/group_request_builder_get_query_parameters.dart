import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/group/group_rights.dart';
import './get_additional_query_parameter_type.dart';

/// Queries over all groups the account is member of. The various query parameters can be used to filter the response.
class GroupRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Filter group memberships on the given accounts, specified by id. This parameter supports composition with all parameters from the account resource.
    List<int>? account;
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Only return group memberships that can or cannot be activated.
    List<bool>? applicableForActivation;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Only return group memberships that have an expiration set that is before the given date.
    List<DateOnly>? expiredAt;
    ///  Filter group memberships on the given groups, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? group;
    ///  Filter group memberships on (part of) the name or uuid of the group or the folder (if any).
    List<String>? groupNameContains;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Only return group memberships that are or are not nested.
    List<bool>? nested;
    ///  Filter group memberships on the given organizational unit of the group, specified by id. This parameter supports composition with all parameters from the organizational unit resource.
    List<int>? organizationalUnit;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Filter group memberships on the given rights.
    List<GroupRights>? rights;
    ///  Filter group memberships on the given signatures, specified by id. This parameter supports composition with all parameters from the signature filter.
    List<int>? signature;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Only return group memberships that have or do not have access to the group's vault.
    List<bool>? vaultAccess;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
     Map<String, dynamic> toMap() {
        return {
            'account' : account,
            'additional' : additional,
            'any' : any,
            'applicableForActivation' : applicableForActivation,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'exclude' : exclude,
            'expiredAt' : expiredAt,
            'group' : group,
            'groupNameContains' : groupNameContains,
            'id' : id,
            'modifiedSince' : modifiedSince,
            'nested' : nested,
            'organizationalUnit' : organizationalUnit,
            'q' : q,
            'rights' : rights,
            'signature' : signature,
            'sort' : sort,
            'vaultAccess' : vaultAccess,
        };
    }
}
