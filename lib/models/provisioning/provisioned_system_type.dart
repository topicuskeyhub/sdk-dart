enum ProvisionedSystemType {
    ldap('LDAP'),
    activeDirectory('ACTIVE_DIRECTORY'),
    azureTenant('AZURE_TENANT'),
    sourceLdapDirectory('SOURCE_LDAP_DIRECTORY'),
    sourceAzureOidcDirectory('SOURCE_AZURE_OIDC_DIRECTORY'),
    sourceAzureSyncLdapDirectory('SOURCE_AZURE_SYNC_LDAP_DIRECTORY'),
    scim('SCIM'),
    internalLdap('INTERNAL_LDAP'),
    provisionedNamespace('PROVISIONED_NAMESPACE');
    const ProvisionedSystemType(this.value);
    final String value;
}
