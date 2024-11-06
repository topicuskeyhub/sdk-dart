import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../../../models/auth/internal_account_status.dart';
import './get_additional_query_parameter_type.dart';

/// Queries over all internal accounts within a directory. The various query parameters can be used to filter the response.
class InternalaccountRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Filter the internal accounts by KeyHub accounts, specified by id. This parameter supports composition with all parameters from the account resource.
    List<int>? account;
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Filter the internal accounts by directory, specified by id. This parameter supports composition with all parameters from the account directory resource.
    List<int>? directory;
    ///  Filter the internal accounts by the owner group of the directory, specified by id. This parameter supports composition with all parameters from the account resource.
    List<int>? directoryOwnerGroup;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Only return internal accounts that have or have not been active.
    List<bool>? hasBeenActive;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter the internal accounts by organizational units, specified by id. This parameter supports composition with all parameters from the organizational unit resource.
    List<int>? organizationalUnit;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Only return internal accounts with the given status.
    List<InternalAccountStatus>? status;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'account' : account,
            'additional' : additional,
            'any' : any,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'directory' : directory,
            'directoryOwnerGroup' : directoryOwnerGroup,
            'exclude' : exclude,
            'hasBeenActive' : hasBeenActive,
            'id' : id,
            'modifiedSince' : modifiedSince,
            'organizationalUnit' : organizationalUnit,
            'q' : q,
            'sort' : sort,
            'status' : status,
        };
    }
}
