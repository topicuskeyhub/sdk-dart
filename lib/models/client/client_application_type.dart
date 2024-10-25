enum ClientApplicationType {
    oauth2("OAUTH2"),
    saml2("SAML2"),
    ldap("LDAP");
    const ClientApplicationType(this.value);
    final String value;
}
