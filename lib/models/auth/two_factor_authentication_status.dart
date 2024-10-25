enum TwoFactorAuthenticationStatus {
    disabled("DISABLED"),
    EXTERNALEscaped("EXTERNAL"),
    totp("TOTP"),
    app("APP"),
    webauthn("WEBAUTHN"),
    mixed("MIXED");
    const TwoFactorAuthenticationStatus(this.value);
    final String value;
}
