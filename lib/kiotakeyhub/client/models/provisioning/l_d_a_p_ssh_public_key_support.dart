enum LDAPSshPublicKeySupport {
    disabled("DISABLED"),
    sshPublicKey("SSH_PUBLIC_KEY"),
    altSecurityIdentities("ALT_SECURITY_IDENTITIES");
    const LDAPSshPublicKeySupport(this.value);
    final String value;
}
