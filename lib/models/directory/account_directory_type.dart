// ignore_for_file: type=lint
/// auto generated
enum AccountDirectoryType {
    maintenance('MAINTENANCE'),
    ldap('LDAP'),
    internal('INTERNAL'),
    oidc('OIDC'),
    pendingAccounts('PENDING_ACCOUNTS');
    const AccountDirectoryType(this.value);
    final String value;
}
