enum ProvisionedSCIMVendor {
    defaultEscaped('DEFAULT'),
    aws('AWS'),
    keystone('KEYSTONE');
    const ProvisionedSCIMVendor(this.value);
    final String value;
}
