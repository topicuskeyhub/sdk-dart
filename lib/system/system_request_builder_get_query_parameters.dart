// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import 'package:uuid/uuid.dart';
import '../models/boolean_enum.dart';
import '../models/t_l_s_level.dart';
import './get_additional_query_parameter_type.dart';

/// auto generated
/// Query for all provisioned systems in Topicus KeyHub. The various query parameters can be used to filter the response.
class SystemRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Filter the systems by access profile provisioning which reference a group on the returned systems, specified by id. This parameter supports composition with all parameters from the access profile provisioning resource.
    List<int>? accessProfileProvisioning;
    ///  Filter the systems by provisioned accounts, specified by id. This parameter supports composition with all parameters from the provisioned account resource.
    List<int>? account;
    ///  Only return active or inactive systems.
    List<BooleanEnum>? active;
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Filter the systems on groups that perform content administration for them, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? contentAdministrator;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Only return systems for which one of the certificates used is expired at the given instant.
    List<DateTime>? expiredCertificate;
    ///  Filter the systems on one or more UUIDs as read from the system.
    List<UuidValue>? externalUuid;
    ///  Filter systems on the Azure OIDC directory for which it is a provisioned source directory, specified by id. This parameter supports composition with all parameters from the directory resource.
    List<int>? forAzureOIDCDirectory;
    ///  Filter provisioned namespaces on their base system, specified by id. This parameter supports composition with all parameters from the provisioned system resource.
    List<int>? forBaseSystem;
    ///  Filter systems on the clients for which it is an internal provisioned LDAP, specified by id. This parameter supports composition with all parameters from the client resource.
    List<int>? forClient;
    ///  Filter systems on the LDAP directory for which it is a provisioned source directory, specified by id. This parameter supports composition with all parameters from the directory resource.
    List<int>? forLDAPDirectory;
    ///  Filter the systems by groups for which a provisioning group references a group on the returned systems, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? group;
    ///  Filter systems on the specified groupDN, for those system types that have such a property.
    List<String>? groupDN;
    ///  Filter systems on the groups on a system, specified by id. This parameter supports composition with all parameters from the group on system resource.
    List<int>? groupOnSystem;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter systems on the exact name.
    List<String>? name;
    ///  Search systems on (part of) the name or uuid.
    List<String>? nameContains;
    ///  Only return systems for which the name does not start with the given prefix.
    List<String>? nameDoesNotStartWith;
    ///  Only return systems for which the name starts with the given prefix.
    List<String>? nameStartsWith;
    ///  Filter the systems on not having a provisioning group for a group on system on the returned systems, specified by id.
    List<int>? notInGroup;
    ///  Filter provisioned LDAPs on the numbering used, specified by id. This parameter supports composition with all parameters from the numberseq resource.
    List<int>? numbering;
    ///  Filter systems on organizational units, specified by id. This parameter supports composition with all parameters from the organizational unit resource.
    List<int>? organizationalUnit;
    ///  Filter systems on organizational units, specified by id. This parameter is automatically set and primarily used for security permission enforcement.
    List<int>? organizationalUnitForEnforcement;
    ///  Filter the systems for which the given group is owner, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? ownedBy;
    ///  Filter the systems by provisioning groups which reference a group on the returned systems, specified by id. This parameter supports composition with all parameters from the provisioning group resource.
    List<int>? provisioningGroup;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Only return systems for which self-service for existing groups on system is enabled.
    List<bool>? selfServiceExistingGroups;
    ///  Only return systems for which self-service for new groups on system is enabled.
    List<bool>? selfServiceNewGroups;
    ///  Only return systems for which self-service for service accounts is enabled.
    List<bool>? selfServiceServiceAccounts;
    ///  Filter systems on the specified serviceAccountDN, for those system types that have such a property.
    List<String>? serviceAccountDN;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Filter the systems on groups that perform technical administration for them, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? technicalAdministrator;
    ///  Filter the systems on the TLS setting used.
    List<TLSLevel>? tls;
    ///  Only return systems of the given type(s).
    List<String>? type_;
    ///  Filter results on one or more UUIDs.
    List<String>? uuid;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'accessProfileProvisioning' : accessProfileProvisioning,
            'account' : account,
            'active' : active,
            'additional' : additional,
            'any' : any,
            'contentAdministrator' : contentAdministrator,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'exclude' : exclude,
            'expiredCertificate' : expiredCertificate,
            'externalUuid' : externalUuid,
            'forAzureOIDCDirectory' : forAzureOIDCDirectory,
            'forBaseSystem' : forBaseSystem,
            'forClient' : forClient,
            'forLDAPDirectory' : forLDAPDirectory,
            'group' : group,
            'groupDN' : groupDN,
            'groupOnSystem' : groupOnSystem,
            'id' : id,
            'modifiedSince' : modifiedSince,
            'name' : name,
            'nameContains' : nameContains,
            'nameDoesNotStartWith' : nameDoesNotStartWith,
            'nameStartsWith' : nameStartsWith,
            'notInGroup' : notInGroup,
            'numbering' : numbering,
            'organizationalUnit' : organizationalUnit,
            'organizationalUnitForEnforcement' : organizationalUnitForEnforcement,
            'ownedBy' : ownedBy,
            'provisioningGroup' : provisioningGroup,
            'q' : q,
            'selfServiceExistingGroups' : selfServiceExistingGroups,
            'selfServiceNewGroups' : selfServiceNewGroups,
            'selfServiceServiceAccounts' : selfServiceServiceAccounts,
            'serviceAccountDN' : serviceAccountDN,
            'sort' : sort,
            'technicalAdministrator' : technicalAdministrator,
            'tls' : tls,
            'type_' : type_,
            'uuid' : uuid,
        };
    }
}
