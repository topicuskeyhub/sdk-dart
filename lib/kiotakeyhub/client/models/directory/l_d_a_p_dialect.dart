enum LDAPDialect {
    activeDirectory("ACTIVE_DIRECTORY"),
    openldap("OPENLDAP");
    const LDAPDialect(this.value);
    final String value;
}
