// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './get_additional_query_parameter_type.dart';

/// auto generated
/// Query for all account attribute rules in Topicus KeyHub. The various query parameters can be used to filter the response.
class AttributeruleRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Filter account attribute rules on the access profile, specified by id. This parameter supports composition with all parameters from the access profile resource.
    List<int>? accessProfile;
    ///  Filter account attribute rules on the owning group of the access profile, specified by id. This parameter supports composition with all parameters from the access profile resource.
    List<int>? accessProfileOwningGroup;
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Only return account attribute rules that allow or do not allow manual overriding values.
    List<bool>? allowOverride;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Filter the attribute rules by attribute definition, specified by id. This parameter supports composition with all parameters from the attribute definition resource.
    List<int>? attribute;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Only return account attribute rules that are or are not exclusive.
    List<bool>? exclusive;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter account attribute rules on organizational units of the owning group of the access profile, specified by id. This parameter supports composition with all parameters from the organizational unit resource.
    List<int>? organizationalUnit;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'accessProfile' : accessProfile,
            'accessProfileOwningGroup' : accessProfileOwningGroup,
            'additional' : additional,
            'allowOverride' : allowOverride,
            'any' : any,
            'attribute' : attribute,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'exclude' : exclude,
            'exclusive' : exclusive,
            'id' : id,
            'modifiedSince' : modifiedSince,
            'organizationalUnit' : organizationalUnit,
            'q' : q,
            'sort' : sort,
        };
    }
}
