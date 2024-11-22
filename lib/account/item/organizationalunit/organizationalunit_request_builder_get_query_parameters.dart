// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './get_additional_query_parameter_type.dart';

/// auto generated
/// Queries over all organizational units the account is member of. The various query parameters can be used to filter the response.
class OrganizationalunitRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Filter the organizational units-accounts by accounts, specified by id. This parameter supports composition with all parameters from the account resource.
    List<int>? account;
    ///  Filter the organizational units-accounts by groups owning the internal directory of the accounts, specified by id.
    List<int>? accountDirectoryOwnedBy;
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
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter the organizational units-accounts by organizational units, specified by id. This parameter supports composition with all parameters from the organizational unit resource.
    List<int>? organizationalUnit;
    ///  Filter the organizational units-accounts by groups owning the organizational unit, specified by id.
    List<int>? organizationalUnitOwnedBy;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'account' : account,
            'accountDirectoryOwnedBy' : accountDirectoryOwnedBy,
            'additional' : additional,
            'any' : any,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'exclude' : exclude,
            'id' : id,
            'modifiedSince' : modifiedSince,
            'organizationalUnit' : organizationalUnit,
            'organizationalUnitOwnedBy' : organizationalUnitOwnedBy,
            'q' : q,
            'sort' : sort,
        };
    }
}
