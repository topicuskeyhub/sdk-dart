enum LDAPPasswordHashingScheme {
    ssha('SSHA'),
    pbkdf2('PBKDF2');
    const LDAPPasswordHashingScheme(this.value);
    final String value;
}
