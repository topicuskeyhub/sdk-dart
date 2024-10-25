enum ProvisionedSCIMVendor {
    DEFAULTEscaped("DEFAULT"),
    aws("AWS"),
    keystone("KEYSTONE");
    const ProvisionedSCIMVendor(this.value);
    final String value;
}
