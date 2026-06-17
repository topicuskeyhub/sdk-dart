// ignore_for_file: type=lint
/// auto generated
enum LDAPPasswordHashingScheme {
    ssha('SSHA'),
    pbkdf2('PBKDF2'),
    argon2id('ARGON2ID');
    const LDAPPasswordHashingScheme(this.value);
    final String value;
}
