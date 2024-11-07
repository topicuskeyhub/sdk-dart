import 'package:kiota_abstractions/kiota_abstractions.dart';
import './get_additional_query_parameter_type.dart';

/// Query for all access profile provisioning links in Topicus KeyHub. The various query parameters can be used to filter the response.
class ProfileprovisioningRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Filter access profile provisioning links on the given access profiles, specified by id. This parameter supports composition with all parameters from the access profile resource.
    List<int>? accessProfile;
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
    ///  Filter access profile provisioning links on the given group on systems, specified by id. This parameter supports composition with all parameters from the group on system resource.
    List<int>? groupOnSystem;
    ///  Only return access profile provisioning links for which one of the given groups is the owner of its group on system, specified by id. This parameter supports composition with all parameters from the groups resource.
    List<int>? groupOnSystemOwnerGroup;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter access profile provisioning links for which the given groups are owner, specified by id. This parameter supports composition with all parameters from the access profile resource.
    List<int>? ownedBy;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Only return access profile provisioning links that are provisionined on one of the given systems, specified by id. This parameter supports composition with all parameters from the systems resource.
    List<int>? system;
    ///  Only return access profile provisioning links for which one of the given groups is technical administrator for the system of its group on system, specified by id. This parameter supports composition with all parameters from the groups resource.
    List<int>? systemAdminGroup;
    ///  Only return access profile provisioning links for which one of the given groups is content administrator for the system of its group on system, specified by id. This parameter supports composition with all parameters from the groups resource.
    List<int>? systemContentAdminGroup;
    ///  Only return access profile provisioning links for which one of the given groups is the owner of its provisioned system, specified by id. This parameter supports composition with all parameters from the groups resource.
    List<int>? systemOwnerGroup;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'accessProfile' : accessProfile,
            'additional' : additional,
            'any' : any,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'exclude' : exclude,
            'groupOnSystem' : groupOnSystem,
            'groupOnSystemOwnerGroup' : groupOnSystemOwnerGroup,
            'id' : id,
            'modifiedSince' : modifiedSince,
            'ownedBy' : ownedBy,
            'q' : q,
            'sort' : sort,
            'system' : system,
            'systemAdminGroup' : systemAdminGroup,
            'systemContentAdminGroup' : systemContentAdminGroup,
            'systemOwnerGroup' : systemOwnerGroup,
        };
    }
}
