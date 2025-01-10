// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/identity/account_attribute_source.dart';
import './get_additional_query_parameter_type.dart';

/// auto generated
/// Query for account attribute values for a specific account. The various query parameters can be used to filter the response.
class AttributevalueRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Filter the attribute values by account, specified by id. This parameter supports composition with all parameters from the account resource.
    List<int>? account;
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Filter the attribute values by attribute definition, specified by id. This parameter supports composition with all parameters from the attribute definition resource.
    List<int>? attribute;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Filter the attribute values by the account's directory, specified by id. This parameter supports composition with all parameters from the account directory resource.
    List<int>? directory;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return attribute values that are, or are not, the latest value for its source.
    List<bool>? latestForSource;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Filter attribute values on the given source(s).
    List<AccountAttributeSource>? source;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'account' : account,
            'additional' : additional,
            'any' : any,
            'attribute' : attribute,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'directory' : directory,
            'exclude' : exclude,
            'id' : id,
            'latestForSource' : latestForSource,
            'modifiedSince' : modifiedSince,
            'q' : q,
            'sort' : sort,
            'source' : source,
        };
    }
}
