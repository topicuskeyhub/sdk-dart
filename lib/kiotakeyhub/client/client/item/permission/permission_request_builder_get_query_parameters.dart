import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/client/o_auth2_client_permission_type.dart';
import './get_additional_query_parameter_type.dart';

/// Query for all permissions given to a OAuth2 client in Topicus KeyHub. The various query parameters can be used to filter the response.
class PermissionRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Filter permissions on the clients to which they are given, specified by id. This parameter supports composition with all parameters from the client resource.
    List<int>? client;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Filter permissions on the groups to which they apply, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? forGroup;
    ///  Filter permissions on the systems to which they apply, specified by id. This parameter supports composition with all parameters from the system resource.
    List<int>? forSystem;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Filter permissions on the permission type(s).
    List<OAuth2ClientPermissionType>? value;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
     Map<String, dynamic> toMap() {
        return {
            'additional' : additional,
            'any' : any,
            'client' : client,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'exclude' : exclude,
            'forGroup' : forGroup,
            'forSystem' : forSystem,
            'id' : id,
            'modifiedSince' : modifiedSince,
            'q' : q,
            'sort' : sort,
            'value' : value,
        };
    }
}
