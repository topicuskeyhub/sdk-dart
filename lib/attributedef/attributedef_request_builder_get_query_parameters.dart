// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/identity/account_attribute_format.dart';
import '../models/identity/account_attribute_system_definition.dart';
import './get_additional_query_parameter_type.dart';

/// auto generated
/// Query for all account attribute definitions in Topicus KeyHub. The various query parameters can be used to filter the response.
class AttributedefRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Filter account attribute definitions on the given format(s).
    List<AccountAttributeFormat>? format;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter account attribute definitions on the exact name.
    List<String>? name;
    ///  Filter account attribute definitions on (part of) the name.
    List<String>? nameContains;
    ///  Only return account attributes for which the given access profiles do not have an attribute rule, specified by id.
    List<int>? noRuleForAccessProfile;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Only return account attribute definitions that are or are not required.
    List<bool>? required_;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Filter account attribute definitions on the given system definition(s).
    List<AccountAttributeSystemDefinition>? systemDefinition;
    ///  Only return account attribute definitions that are or are not unique.
    List<bool>? unique;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'additional' : additional,
            'any' : any,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'exclude' : exclude,
            'format' : format,
            'id' : id,
            'modifiedSince' : modifiedSince,
            'name' : name,
            'nameContains' : nameContains,
            'noRuleForAccessProfile' : noRuleForAccessProfile,
            'q' : q,
            'required_' : required_,
            'sort' : sort,
            'systemDefinition' : systemDefinition,
            'unique' : unique,
        };
    }
}
