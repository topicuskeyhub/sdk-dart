enum TwoFactorAuthenticationStatus {
    disabled('DISABLED'),
    externalEscaped('EXTERNAL'),
    totp('TOTP'),
    app('APP'),
    webauthn('WEBAUTHN'),
    mixed('MIXED');
    const TwoFactorAuthenticationStatus(this.value);
    final String value;
}
