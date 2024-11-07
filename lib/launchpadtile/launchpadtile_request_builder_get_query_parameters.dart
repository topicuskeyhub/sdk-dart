import 'package:kiota_abstractions/kiota_abstractions.dart';
import './get_additional_query_parameter_type.dart';

/// Queries over all launchpad tiles. The various query parameters can be used to filter the response.
class LaunchpadtileRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Filter tiles on the given clients, specified by id. Only returns SSO tiles. This parameter supports composition with all parameters from the client resource.
    List<int>? application;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Filter tiles on the given groups, specified by id. Only returns manual tiles. This parameter supports composition with all parameters from the group resource.
    List<int>? group;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Filter the tiles by exact match of the title. Only returns manual tiles.
    List<String>? title;
    ///  Filter tiles on the given vault records, specified by id. Only returns vault record tiles. This parameter supports composition with all parameters from the vault record resource.
    List<int>? vaultRecord;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'additional' : additional,
            'any' : any,
            'application' : application,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'exclude' : exclude,
            'group' : group,
            'id' : id,
            'modifiedSince' : modifiedSince,
            'q' : q,
            'sort' : sort,
            'title' : title,
            'vaultRecord' : vaultRecord,
        };
    }
}
