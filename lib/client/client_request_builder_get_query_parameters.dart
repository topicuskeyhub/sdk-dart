// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './get_additional_query_parameter_type.dart';

/// auto generated
/// Query for all clients in Topicus KeyHub. The various query parameters can be used to filter the response.
class ClientRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Only return the client applications whose base organizational unit, defined as the technical administrator's organizational unit, is equal to or an ancestor of any of the given unit(s), specified by id.
    List<int>? baseOrganizationalUnitAncestorOf;
    ///  Filter clients on the client ids.
    List<String>? clientId;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Only return LDAP clients for which the client certificate is expired at the given instant.
    List<DateTime>? expiredCertificate;
    ///  Filter the SSO applications connected to groups, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? group;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return LDAP clients that are used as provisioned internal LDAP.
    List<bool>? isProvisionedInternalLDAP;
    ///  Filter client applications on direct connections to organizational units, specified by id. This parameter supports composition with all parameters from the organizational unit resource.
    List<int>? memberOfOrganizationalUnit;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter clients on the exact name.
    List<String>? name;
    ///  Search clients on (part of) the name, client id or uuid.
    List<String>? nameContains;
    ///  Only return clients for which the name does not start with one of the given values.
    List<String>? nameDoesNotStartWith;
    ///  Only return clients for which the name starts with one of the given values.
    List<String>? nameStartsWith;
    ///  Filter the SSO applications not connected to groups, specified by id.
    List<int>? notInGroup;
    ///  Filter clients on organizational units, specified by id. This parameter is automatically set and primarily used for security permission enforcement.
    List<int>? organizationalUnitForEnforcement;
    ///  Filter the clients for which the given group is owner, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? ownedBy;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Filter the clients by the secret shared in a vault, specified by id. This parameter supports composition with all parameters from the vault resource.
    List<int>? sharedSecret;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Filter the clients for which the given group is technical administrator, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? technicalAdministrator;
    ///  Only return clients of the given type(s).
    List<String>? type_;
    ///  Only return OAuth2 clients that use or do not use the client credentials grant.
    List<bool>? useClientCredentials;
    ///  Filter results on one or more UUIDs.
    List<String>? uuid;
    ///  Filter the OAuth 2.0 clients by vault, specified by id. This parameter supports composition with all parameters from the vault resource.
    List<int>? vault;
    ///  Only return OAuth2 clients that have specific permissions, specified by id. This parameter supports composition with all parameters from the client permission resource.
    List<int>? withPermission;
    ///  Filter the client applications with permissions for the given groups, either directly or via provisionedsystem ownership, specified by id. 
    List<int>? withPermissionForOwningGroup;
    ///  Filter the client applications with active requests for permissions for the given groups, either directly or via provisionedsystem ownership, specified by id. 
    List<int>? withRequestedPermissionForOwningGroup;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'additional' : additional,
            'any' : any,
            'baseOrganizationalUnitAncestorOf' : baseOrganizationalUnitAncestorOf,
            'clientId' : clientId,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'exclude' : exclude,
            'expiredCertificate' : expiredCertificate,
            'group' : group,
            'id' : id,
            'isProvisionedInternalLDAP' : isProvisionedInternalLDAP,
            'memberOfOrganizationalUnit' : memberOfOrganizationalUnit,
            'modifiedSince' : modifiedSince,
            'name' : name,
            'nameContains' : nameContains,
            'nameDoesNotStartWith' : nameDoesNotStartWith,
            'nameStartsWith' : nameStartsWith,
            'notInGroup' : notInGroup,
            'organizationalUnitForEnforcement' : organizationalUnitForEnforcement,
            'ownedBy' : ownedBy,
            'q' : q,
            'sharedSecret' : sharedSecret,
            'sort' : sort,
            'technicalAdministrator' : technicalAdministrator,
            'type_' : type_,
            'useClientCredentials' : useClientCredentials,
            'uuid' : uuid,
            'vault' : vault,
            'withPermission' : withPermission,
            'withPermissionForOwningGroup' : withPermissionForOwningGroup,
            'withRequestedPermissionForOwningGroup' : withRequestedPermissionForOwningGroup,
        };
    }
}
