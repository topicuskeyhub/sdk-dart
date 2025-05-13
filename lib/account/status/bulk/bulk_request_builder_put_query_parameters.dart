// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/auth/account_license_role.dart';
import '../../../models/auth/account_validity.dart';
import '../../../models/auth/two_factor_authentication_status.dart';

/// auto generated
/// Updates multiple accounts. The given accounts will be updated according to the selected action, for example, have their license role set to the given license role, provided this matches the current license's conditions.
class BulkRequestBuilderPutQueryParameters implements AbstractQueryParameters {
    ///  Filter the accounts by membership of access profiles, specified by id. This parameter supports composition with all parameters from the access profile resource.
    List<int>? accessProfile;
    ///  Only return accounts with the given activation code(s).
    List<String>? activationCode;
    ///  Only return accounts that have an activation deadline that expires at or after the given instant.
    List<DateTime>? activationDeadlineAtOrAfter;
    ///  Only return active or inactive accounts.
    List<bool>? active;
    ///  Only return accounts that have been active since the given instant.
    List<DateTime>? activeSince;
    ///  Only return accounts that are or are not KeyHub Administrators.
    List<bool>? admin;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Only return the accounts for which the base organizational unit of the directory is equal to or an ancestor of the given unit(s), specified by id.
    List<int>? baseOrganizationalUnitAncestorOf;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Filter the accounts by directory, specified by id. This parameter supports composition with all parameters from the account directory resource.
    List<int>? directory;
    ///  Only return internal accounts for directories with the given owner(s), specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? directoryOwnedBy;
    ///  Only return the accounts with the given e-mail addresses.
    List<String>? email;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Filter the accounts by their registered external ids. This parameter supports composition with all parameters from the 'external id' resource.
    List<int>? externalId;
    ///  Filter the accounts by membership of groups, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? group;
    ///  Only return accounts that have or have not ever been active.
    List<bool>? hasBeenActive;
    ///  Only return accounts that have or don't have an e-mail address.
    List<bool>? hasEmail;
    ///  Only return accounts that have or don't have their vaults setup.
    List<bool>? hasVault;
    ///  Only return accounts that have access to the vault for at least one of the given groups, specified by id.
    List<int>? hasVaultSecretForGroup;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Filter accounts by exact match on the id in the directory.
    List<String>? idInDirectory;
    ///  Only return accounts that have not been active since the given instant.
    List<DateTime>? inactiveSince;
    ///  Only return accounts with the given license role(s).
    List<AccountLicenseRole>? licenseRole;
    ///  Only return the keyhub maintenance user.
    List<bool>? maintenanceAdmin;
    ///  Only return managers for at least one of the given groups, specified by id.
    List<int>? managerForGroup;
    ///  Filter accounts on direct connections to organizational units, specified by id. This parameter supports composition with all parameters from the organizational unit resource.
    List<int>? memberOfOrganizationalUnit;
    ///  Filter accounts on connections to organizational units owned by the provided group, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? memberOfOrganizationalUnitOwnedBy;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Only return accounts for which the username does not start with one of the given values.
    List<String>? nameDoesNotStartWith;
    ///  Only return accounts for which the username starts with one of the given values.
    List<String>? nameStartsWith;
    ///  Filter the accounts that are not a member of the given access profiles, specified by id. 
    List<int>? notInAccessProfile;
    ///  Filter the accounts that are not a member of the given groups, specified by id. 
    List<int>? notInGroup;
    ///  Filter the accounts on their 'owning' clients, specified by id. An 'owning client' is a client which can potentially modify the account. Typically this is the client which created the account (if applicable), but it could be a client which has been registered as such after the fact.
    List<int>? owningClient;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Only return account that do or do not require reregistration.
    List<bool>? reregistrationRequired;
    ///  Only return accounts that have or don't have rotating password enabled.
    List<bool>? rotatingPasswordEnabled;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Only return accounts that match the given 2FA status. Note that {@code APP} only matches the accounts who only have a KeyHub app linked, and similar for {@code TOTP} and {@code WEBAUTHN}. {@code MIXED} matches those who have both one or more WebAuthn keys, and either a KeyHub app or generic Totp app linked.
    List<TwoFactorAuthenticationStatus>? twoFactorStatus;
    ///  Filter accounts on the exact username.
    List<String>? username;
    ///  Search accounts on (part of) the username, display name or uuid.
    List<String>? usernameContains;
    ///  Filter results on one or more UUIDs.
    List<String>? uuid;
    ///  Only return accounts that are valid or invalid in the directory.
    List<bool>? validInDirectory;
    ///  Filter accounts on their validity. NOT_APPLICABLE will be seen as VALID.
    List<AccountValidity>? validity;
    ///  Only return accounts that are the owner of one of the given vaults, specified by id. This parameter supports composition with all parameters from the vault resource.
    List<int>? vault;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'accessProfile' : accessProfile,
            'activationCode' : activationCode,
            'activationDeadlineAtOrAfter' : activationDeadlineAtOrAfter,
            'active' : active,
            'activeSince' : activeSince,
            'admin' : admin,
            'any' : any,
            'baseOrganizationalUnitAncestorOf' : baseOrganizationalUnitAncestorOf,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'directory' : directory,
            'directoryOwnedBy' : directoryOwnedBy,
            'email' : email,
            'exclude' : exclude,
            'externalId' : externalId,
            'group' : group,
            'hasBeenActive' : hasBeenActive,
            'hasEmail' : hasEmail,
            'hasVault' : hasVault,
            'hasVaultSecretForGroup' : hasVaultSecretForGroup,
            'id' : id,
            'idInDirectory' : idInDirectory,
            'inactiveSince' : inactiveSince,
            'licenseRole' : licenseRole,
            'maintenanceAdmin' : maintenanceAdmin,
            'managerForGroup' : managerForGroup,
            'memberOfOrganizationalUnit' : memberOfOrganizationalUnit,
            'memberOfOrganizationalUnitOwnedBy' : memberOfOrganizationalUnitOwnedBy,
            'modifiedSince' : modifiedSince,
            'nameDoesNotStartWith' : nameDoesNotStartWith,
            'nameStartsWith' : nameStartsWith,
            'notInAccessProfile' : notInAccessProfile,
            'notInGroup' : notInGroup,
            'owningClient' : owningClient,
            'q' : q,
            'reregistrationRequired' : reregistrationRequired,
            'rotatingPasswordEnabled' : rotatingPasswordEnabled,
            'sort' : sort,
            'twoFactorStatus' : twoFactorStatus,
            'username' : username,
            'usernameContains' : usernameContains,
            'uuid' : uuid,
            'validInDirectory' : validInDirectory,
            'validity' : validity,
            'vault' : vault,
        };
    }
}
