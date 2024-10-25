enum CertificateType {
    publicCertificate("PUBLIC_CERTIFICATE"),
    privateKeyPair("PRIVATE_KEY_PAIR");
    const CertificateType(this.value);
    final String value;
}
