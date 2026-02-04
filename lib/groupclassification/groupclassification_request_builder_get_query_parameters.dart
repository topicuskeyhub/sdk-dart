// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './get_additional_query_parameter_type.dart';

/// auto generated
/// Query for all group classifications in Topicus KeyHub. The various query parameters can be used to filter the response.
class GroupclassificationRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Filter the classifications on the given organizational units including ancestors, specified by id.
    List<int>? availableForOrganizationalUnit;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Only return classifications that are or are not the default classification.
    List<bool>? defaultClassification;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter group classifications on the exact name.
    List<String>? name;
    ///  Filter group classifications on (part of) the name or uuid.
    List<String>? nameContains;
    ///  Filter the classifications on the given organizational units, specified by id. This parameter supports composition with all parameters from the organizational unit resource.
    List<int>? organizationalUnit;
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
            'availableForOrganizationalUnit' : availableForOrganizationalUnit,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'defaultClassification' : defaultClassification,
            'exclude' : exclude,
            'id' : id,
            'modifiedSince' : modifiedSince,
            'name' : name,
            'nameContains' : nameContains,
            'organizationalUnit' : organizationalUnit,
            'q' : q,
            'sort' : sort,
            'uuid' : uuid,
        };
    }
}
