// ignore_for_file: type=lint
/// auto generated
enum TwoFactorAuthenticationStatus {
    disabled('DISABLED'),
    external_('EXTERNAL'),
    totp('TOTP'),
    app('APP'),
    webauthn('WEBAUTHN'),
    mixed('MIXED');
    const TwoFactorAuthenticationStatus(this.value);
    final String value;
}
