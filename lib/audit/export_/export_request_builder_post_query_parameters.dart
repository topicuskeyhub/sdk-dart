// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/audit/audit_record_type.dart';

/// auto generated
/// Prepares an export of audit records using the filtering specified in the query parameters. The URI of the export can be found in the returned Location header. This URI is valid for 2 minutes after being generated.
class ExportRequestBuilderPostQueryParameters implements AbstractQueryParameters {
    ///  Only return records after a given date.
    List<DateTime>? after;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Only return records before a given date.
    List<DateTime>? before;
    ///  Perform a full text search on the contents of audit records.
    List<String>? containing;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Include or do not include records that are considered daily use.
    List<bool>? includeDaily;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Only return audit records targeting the given group either via onGroup1 or onGroup2, specified by id.
    List<int>? onGroup;
    ///  Only return audit records targeting the given group specifically as onGroup1, specified by id.
    List<int>? onGroup1;
    ///  Only return audit records performed by or targeting the given account, specified by id.
    List<int>? onOrByAccount;
    ///  Only return audit records performed by or targeting the given client, specified by id.
    List<int>? onOrByClient;
    ///  Only return audit records targeting the given service account, specified by id.
    List<int>? onServiceAccount;
    ///  Only return audit records that have the performed-by-name set or not set.
    List<bool>? performedByNameSet;
    ///  Only return audit records that are performed by the given account or client, specified by uuid.
    List<String>? performedByUuid;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Filter audit records on the given type(s).
    List<AuditRecordType>? type_;
    ///  Only return audit records that are meant to be displayed to the given account, specified by id.
    List<int>? visibleFor;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'after' : after,
            'any' : any,
            'before' : before,
            'containing' : containing,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'exclude' : exclude,
            'id' : id,
            'includeDaily' : includeDaily,
            'modifiedSince' : modifiedSince,
            'onGroup' : onGroup,
            'onGroup1' : onGroup1,
            'onOrByAccount' : onOrByAccount,
            'onOrByClient' : onOrByClient,
            'onServiceAccount' : onServiceAccount,
            'performedByNameSet' : performedByNameSet,
            'performedByUuid' : performedByUuid,
            'q' : q,
            'sort' : sort,
            'type_' : type_,
            'visibleFor' : visibleFor,
        };
    }
}
