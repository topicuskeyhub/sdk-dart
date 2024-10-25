enum LDAPDirectoryPasswordRecovery {
    disabled("DISABLED"),
    verify2fa("VERIFY_2FA"),
    verifyMail("VERIFY_MAIL"),
    verifyMailAnd2fa("VERIFY_MAIL_AND_2FA");
    const LDAPDirectoryPasswordRecovery(this.value);
    final String value;
}
