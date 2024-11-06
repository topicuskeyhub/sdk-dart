enum AccountProvisioningResult {
    ok('OK'),
    configurationRequired('CONFIGURATION_REQUIRED'),
    error('ERROR');
    const AccountProvisioningResult(this.value);
    final String value;
}
