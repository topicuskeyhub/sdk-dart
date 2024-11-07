import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../models/boolean_enum.dart';
import '../models/directory/o_i_d_c_vendor.dart';
import '../models/provisioning/provisioned_system_type.dart';
import '../models/t_l_s_level.dart';
import './get_additional_query_parameter_type.dart';

/// Query for all directories in Topicus KeyHub. The various query parameters can be used to filter the response.
class DirectoryRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Only return directories that are or are not active. Defaults to true.
    List<BooleanEnum>? active;
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Filter the directories on the given base organizational unit, specified by id. This parameter supports composition with all parameters from the organizational unit resource.
    List<int>? baseOrganizationalUnit;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Only return directories that are or are not the default directory.
    List<bool>? defaultDirectory;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Only return directories that use certificates that are expired at the given instant.
    List<DateTime>? expiredCertificate;
    ///  Filter the directories on the given helpdesk groups, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? helpdeskGroup;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return directories that are not used for source directory provisioning for the given types of linked systems.
    List<ProvisionedSystemType>? isNotProvisionedDirectory;
    ///  Only return directories that are or are not the built-in maintenance directory.
    List<bool>? maintenanceDirectory;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter directories on the exact name.
    List<String>? name;
    ///  Filter directories on (part of) the name or uuid.
    List<String>? nameContains;
    ///  Filter directories where the name does not start with the given values.
    List<String>? nameDoesNotStartWith;
    ///  Filter directories on the start of the name.
    List<String>? nameStartsWith;
    ///  Only return OIDC directories for the given vendor(s).
    List<OIDCVendor>? oidcVender;
    ///  Only return internal directories for the given owner(s), specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? ownedBy;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Filter LDAP directories on TLS setting(s) used.
    List<TLSLevel>? tls;
    ///  Only return directories of the given type(s).
    List<String>? typeEscaped;
    ///  Filter results on one or more UUIDs.
    List<String>? uuid;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'active' : active,
            'additional' : additional,
            'any' : any,
            'baseOrganizationalUnit' : baseOrganizationalUnit,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'defaultDirectory' : defaultDirectory,
            'exclude' : exclude,
            'expiredCertificate' : expiredCertificate,
            'helpdeskGroup' : helpdeskGroup,
            'id' : id,
            'isNotProvisionedDirectory' : isNotProvisionedDirectory,
            'maintenanceDirectory' : maintenanceDirectory,
            'modifiedSince' : modifiedSince,
            'name' : name,
            'nameContains' : nameContains,
            'nameDoesNotStartWith' : nameDoesNotStartWith,
            'nameStartsWith' : nameStartsWith,
            'oidcVender' : oidcVender,
            'ownedBy' : ownedBy,
            'q' : q,
            'sort' : sort,
            'tls' : tls,
            'typeEscaped' : typeEscaped,
            'uuid' : uuid,
        };
    }
}
