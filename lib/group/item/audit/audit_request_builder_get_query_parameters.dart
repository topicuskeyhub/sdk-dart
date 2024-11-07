import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/audit/group_audit_status.dart';
import './get_additional_query_parameter_type.dart';

/// Queries over all audits for a group. The various query parameters can be used to filter the response.
class AuditRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Only return audits created after a given date.
    List<DateTime>? after;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Filter group audits on the given groups, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? group;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return the last audits for the given groups, specified by id.
    List<int>? lastForGroups;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Only return audits with a given status.
    List<GroupAuditStatus>? status;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'additional' : additional,
            'after' : after,
            'any' : any,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'exclude' : exclude,
            'group' : group,
            'id' : id,
            'lastForGroups' : lastForGroups,
            'modifiedSince' : modifiedSince,
            'q' : q,
            'sort' : sort,
            'status' : status,
        };
    }
}
