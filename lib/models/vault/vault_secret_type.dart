// ignore_for_file: type=lint
/// auto generated
enum VaultSecretType {
    password('PASSWORD'),
    file('FILE'),
    totp('TOTP'),
    comment('COMMENT');
    const VaultSecretType(this.value);
    final String value;
}
