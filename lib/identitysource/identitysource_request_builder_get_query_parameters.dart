// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './get_additional_query_parameter_type.dart';

/// auto generated
/// Query for all identity sources in Topicus KeyHub. The various query parameters can be used to filter the response.
class IdentitysourceRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Filter synced identity sources on the OAuth2 client used on the SCIM interface. This parameter supports composition with all parameters from the client resource.
    List<int>? client;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Filter identity sources on having a mapping for the given attribute, specified by id. This parameter supports composition with all parameters from the attribute definition resource.
    List<int>? hasMappingForAttribute;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Filter identity sources on using the given attribute as identifier for accounts, specified by id. This parameter supports composition with all parameters from the attribute definition resource.
    List<int>? identifier;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter identity sources on the exact name.
    List<String>? name;
    ///  Search identity sources on (part of) the name or uuid.
    List<String>? nameContains;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Filter results on one or more UUIDs.
    List<String>? uuid;
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
            'hasMappingForAttribute' : hasMappingForAttribute,
            'id' : id,
            'identifier' : identifier,
            'modifiedSince' : modifiedSince,
            'name' : name,
            'nameContains' : nameContains,
            'q' : q,
            'sort' : sort,
            'uuid' : uuid,
        };
    }
}
