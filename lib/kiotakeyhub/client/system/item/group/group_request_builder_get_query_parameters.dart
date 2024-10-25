import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/provisioning/group_on_system_type.dart';
import './get_additional_query_parameter_type.dart';

/// Query for all groups on systems within a provisioned system in Topicus KeyHub. The various query parameters can be used to filter the response.
class GroupRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Filter the groups on system on groups that perform technical administration for the systems they belong to, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? adminnedBy;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Filter the groups on system on groups that perform content administration for the systems they belong to, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? contentAdminnedBy;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Only return groups on system that have a provisioning group with one of the given groups, specified by id. This parameter supports composition with all parameters from the groups resource.
    List<int>? group;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Search groups on (part of) the display name or the name in system.
    List<String>? nameContains;
    ///  Filter groups on system on the exact name in system.
    List<String>? nameInSystem;
    ///  Only return groups on system that do not have a provisioning group with one of the given groups, specified by id.
    List<int>? notLinkedToGroup;
    ///  Only return groups on system that do are not linked to the given service account, specified by id.
    List<int>? notLinkedToServiceAccount;
    ///  Filter groups-on-system on organizational units, specified by id. This parameter supports composition with all parameters from the organizational unit resource.
    List<int>? organizationalUnit;
    ///  Filter groups-on-system on organizational units, specified by id.
    List<int>? organizationalUnitForEnforcement;
    ///  Filter the groups on system on groups that are owner for them, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? ownedBy;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Only return groups that are the on one of the given systems, specified by id. This parameter supports composition with all parameters from the systems resource.
    List<int>? system;
    ///  Constrain groups-on-system on the system the current user is content admin or owner of, specified by id.
    List<int>? systemForEnforcement;
    ///  Filter the groups on system on groups that own the systems they belong to, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? systemOwnedBy;
    ///  Filter the groups on system on groups that are tier 2 owner for them, specified by id. A tier 2 owner is an owner of a group on system that is linked to a service account this group on system is also linked to.
    List<int>? tier2OwnedBy;
    ///  Filter groups on system on the type.
    List<GroupOnSystemType>? typeEscaped;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
     Map<String, dynamic> toMap() {
        return {
            'additional' : additional,
            'adminnedBy' : adminnedBy,
            'any' : any,
            'contentAdminnedBy' : contentAdminnedBy,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'exclude' : exclude,
            'group' : group,
            'id' : id,
            'modifiedSince' : modifiedSince,
            'nameContains' : nameContains,
            'nameInSystem' : nameInSystem,
            'notLinkedToGroup' : notLinkedToGroup,
            'notLinkedToServiceAccount' : notLinkedToServiceAccount,
            'organizationalUnit' : organizationalUnit,
            'organizationalUnitForEnforcement' : organizationalUnitForEnforcement,
            'ownedBy' : ownedBy,
            'q' : q,
            'sort' : sort,
            'system' : system,
            'systemForEnforcement' : systemForEnforcement,
            'systemOwnedBy' : systemOwnedBy,
            'tier2OwnedBy' : tier2OwnedBy,
            'typeEscaped' : typeEscaped,
        };
    }
}
