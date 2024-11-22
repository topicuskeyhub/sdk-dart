// ignore_for_file: type=lint
/// auto generated
enum CertificateUsage {
    ldapDirectory('LDAP_DIRECTORY'),
    provisionedAd('PROVISIONED_AD'),
    provisionedLdap('PROVISIONED_LDAP'),
    webhook('WEBHOOK'),
    ldapClient('LDAP_CLIENT'),
    ldapServerSetting('LDAP_SERVER_SETTING'),
    globalTrustedCertificate('GLOBAL_TRUSTED_CERTIFICATE'),
    idp('IDP'),
    keyhub('KEYHUB');
    const CertificateUsage(this.value);
    final String value;
}
