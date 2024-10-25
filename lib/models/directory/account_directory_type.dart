enum AccountDirectoryType {
    maintenance("MAINTENANCE"),
    ldap("LDAP"),
    internal("INTERNAL"),
    oidc("OIDC"),
    pendingAccounts("PENDING_ACCOUNTS");
    const AccountDirectoryType(this.value);
    final String value;
}
