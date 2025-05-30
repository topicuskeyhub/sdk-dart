// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './get_additional_query_parameter_type.dart';

/// auto generated
/// Queries over all client links for a group. The various query parameters can be used to filter the response.
class GroupclientRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Only return client group links that do or do not require activation.
    List<bool>? activationRequired;
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Filter client group links on the groups performing technical administration of the client, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? appAdminGroup;
    ///  Filter client group links on the groups with ownership of the client, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? appOwnerGroup;
    ///  Filter client group links on the given clients, specified by id. This parameter supports composition with all parameters from the client resource.
    List<int>? client;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Filter client group links on the given groups, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? group;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter groupclients on their client's organizational units, specified by id. This parameter is automatically set and primarily used for security permission enforcement.
    List<int>? organizationalUnitForEnforcement;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'activationRequired' : activationRequired,
            'additional' : additional,
            'any' : any,
            'appAdminGroup' : appAdminGroup,
            'appOwnerGroup' : appOwnerGroup,
            'client' : client,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'exclude' : exclude,
            'group' : group,
            'id' : id,
            'modifiedSince' : modifiedSince,
            'organizationalUnitForEnforcement' : organizationalUnitForEnforcement,
            'q' : q,
            'sort' : sort,
        };
    }
}
