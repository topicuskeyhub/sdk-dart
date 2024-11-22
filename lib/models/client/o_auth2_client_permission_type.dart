// ignore_for_file: type=lint
/// auto generated
enum OAuth2ClientPermissionType {
    accountsCreate('ACCOUNTS_CREATE'),
    accountsQuery('ACCOUNTS_QUERY'),
    accountsRemove('ACCOUNTS_REMOVE'),
    clientsCreate('CLIENTS_CREATE'),
    clientsQuery('CLIENTS_QUERY'),
    grouponsystemCreate('GROUPONSYSTEM_CREATE'),
    groupsCreate('GROUPS_CREATE'),
    groupsGrantPermissionsAfterCreate('GROUPS_GRANT_PERMISSIONS_AFTER_CREATE'),
    groupsQuery('GROUPS_QUERY'),
    groupsSetClassification('GROUPS_SET_CLASSIFICATION'),
    groupFullVaultAccess('GROUP_FULL_VAULT_ACCESS'),
    groupLaunchpadtiles('GROUP_LAUNCHPADTILES'),
    groupReadContents('GROUP_READ_CONTENTS'),
    groupSetAuthorization('GROUP_SET_AUTHORIZATION'),
    provisionedsystemsQuery('PROVISIONEDSYSTEMS_QUERY'),
    serviceAccountsCreate('SERVICE_ACCOUNTS_CREATE'),
    serviceAccountsQuery('SERVICE_ACCOUNTS_QUERY'),
    serviceAccountsUpdate('SERVICE_ACCOUNTS_UPDATE');
    const OAuth2ClientPermissionType(this.value);
    final String value;
}
