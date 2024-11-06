enum KeyHubLicenseInfoLicenseStatus {
    ok('OK'),
    notYetValid('NOT_YET_VALID'),
    expired('EXPIRED'),
    terminated('TERMINATED'),
    softLimitReached('SOFT_LIMIT_REACHED'),
    hardLimitReached('HARD_LIMIT_REACHED'),
    hardLimitExceeded('HARD_LIMIT_EXCEEDED'),
    wrongDomain('WRONG_DOMAIN'),
    businessLimitExceeded('BUSINESS_LIMIT_EXCEEDED'),
    proLimitExceeded('PRO_LIMIT_EXCEEDED'),
    featureInUse('FEATURE_IN_USE');
    const KeyHubLicenseInfoLicenseStatus(this.value);
    final String value;
}
