import 'package:kiota_abstractions/kiota_abstractions.dart';
import './get_additional_query_parameter_type.dart';

/// Query for all organizational units in Topicus KeyHub. The various query parameters can be used to filter the response.
class OrganizationalunitRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Filter the organizational units for which the given account is auditor, either directly or inherited from one of the parent units, specified by id.
    List<int>? accountIsAuditor;
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Only return the organizational units that are equal to or an ancestor of the given unit(s), specified by id.
    List<int>? ancestorOfOrEqualTo;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Filter the organizational units for which the given group is auditor group, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? auditorGroup;
    ///  Filter the organizational units by accounts, specified by id. This parameter supports composition with all parameters from the account resource.
    List<int>? connectedToAccount;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Filter the organizational units for which the given group is create group approve group, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? createGroupApproveGroup;
    ///  Only return the organizational units that are equal to or a descendant of the given unit(s), specified by id.
    List<int>? descendantOfOrEqualTo;
    ///  Filter the organizational units for which the given group is enable tech admin approve group, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? enableTechAdminApproveGroup;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter organizational units on the exact name.
    List<String>? name;
    ///  Filter organizational units on (part of) the name or uuid.
    List<String>? nameContains;
    ///  Filter the organizational units for which the given group is owner, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? ownedBy;
    ///  Filter the organizational units by parent, specified by id. This parameter supports composition with all parameters from the organizational unit resource.
    List<int>? parent;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Filter the organizational units for which the given group is recovery fallback group, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? recoveryFallbackGroup;
    ///  Filter the organizational units for which the given group is remove group approve group, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? removeGroupApproveGroup;
    ///  Only return organizational units that are or are not the root of the organizational tree.
    List<bool>? root;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Filter results on one or more UUIDs.
    List<String>? uuid;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
     Map<String, dynamic> toMap() {
        return {
            'accountIsAuditor' : accountIsAuditor,
            'additional' : additional,
            'ancestorOfOrEqualTo' : ancestorOfOrEqualTo,
            'any' : any,
            'auditorGroup' : auditorGroup,
            'connectedToAccount' : connectedToAccount,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'createGroupApproveGroup' : createGroupApproveGroup,
            'descendantOfOrEqualTo' : descendantOfOrEqualTo,
            'enableTechAdminApproveGroup' : enableTechAdminApproveGroup,
            'exclude' : exclude,
            'id' : id,
            'modifiedSince' : modifiedSince,
            'name' : name,
            'nameContains' : nameContains,
            'ownedBy' : ownedBy,
            'parent' : parent,
            'q' : q,
            'recoveryFallbackGroup' : recoveryFallbackGroup,
            'removeGroupApproveGroup' : removeGroupApproveGroup,
            'root' : root,
            'sort' : sort,
            'uuid' : uuid,
        };
    }
}
