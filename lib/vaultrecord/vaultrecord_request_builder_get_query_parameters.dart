// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/vault/vault_record_color.dart';
import './get_additional_query_parameter_type.dart';

/// auto generated
/// Query for vault records over all vaults the user can access. The various query parameters can be used to filter the response. It is not possible to access secrets with a query that returns multiple results. Secrets can only be read one by one.
class VaultrecordRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Filter records that accessible by the given account(s), specified by id.
    List<int>? accessibleByAccount;
    ///  Filter records that accessible by the given account(s) and the account is manager of the group, specified by id.
    List<int>? accessibleByAccountAsManager;
    ///  Filter records that accessible by the given client(s), specified by id.
    List<int>? accessibleByClient;
    ///  Filter the records by account, specified by id. This parameter supports composition with all parameters from the account resource.
    List<int>? account;
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Filter the records by client, specified by id. This parameter supports composition with all parameters from the client resource.
    List<int>? client;
    ///  Filter records on the color.
    List<VaultRecordColor>? color;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Only return records that show an expiration warning at or before the given date.
    List<DateOnly>? expireWarningBeforeOrAt;
    ///  Filter records on the exact filename.
    List<String>? filename;
    ///  Filter the records by group, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? group;
    ///  Filter the records by organizational unit of the group, specified by id. This parameter supports composition with all parameters from the client resource.
    List<int>? groupOrganizationalUnit;
    ///  Only return records that have or do not have an expiration policy set.
    List<bool>? hasNoPolicy;
    ///  Filter records that are shared (have a parent record)
    List<bool>? hasParent;
    ///  Only return records that have or do not have expired.
    List<bool>? hasValidPolicy;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter records on the exact name.
    List<String>? name;
    ///  Search records on (part of) the UUID, name, filename, URI or username.
    List<String>? nameContains;
    ///  Filter records that are shared from the specified parent record, specified by id.
    List<int>? parent;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Filter records by secret using composition. Use secret.type to filter on type.
    List<int>? secret;
    ///  Only return records for which the sharing period has expired at or before the given date.
    List<DateTime>? shareExpiresBeforeOrAt;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Filter records on the exact URI.
    List<String>? url;
    ///  Filter records on the exact username.
    List<String>? username;
    ///  Filter records on one or more UUIDs.
    List<String>? uuid;
    ///  Filter the records by vault, specified by id. This parameter supports composition with all parameters from the vault resource.
    List<int>? vault;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'accessibleByAccount' : accessibleByAccount,
            'accessibleByAccountAsManager' : accessibleByAccountAsManager,
            'accessibleByClient' : accessibleByClient,
            'account' : account,
            'additional' : additional,
            'any' : any,
            'client' : client,
            'color' : color,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'exclude' : exclude,
            'expireWarningBeforeOrAt' : expireWarningBeforeOrAt,
            'filename' : filename,
            'group' : group,
            'groupOrganizationalUnit' : groupOrganizationalUnit,
            'hasNoPolicy' : hasNoPolicy,
            'hasParent' : hasParent,
            'hasValidPolicy' : hasValidPolicy,
            'id' : id,
            'modifiedSince' : modifiedSince,
            'name' : name,
            'nameContains' : nameContains,
            'parent' : parent,
            'q' : q,
            'secret' : secret,
            'shareExpiresBeforeOrAt' : shareExpiresBeforeOrAt,
            'sort' : sort,
            'url' : url,
            'username' : username,
            'uuid' : uuid,
            'vault' : vault,
        };
    }
}
