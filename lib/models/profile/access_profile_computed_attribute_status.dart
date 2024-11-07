enum AccessProfileComputedAttributeStatus {
    inSync('IN_SYNC'),
    outOfSync('OUT_OF_SYNC'),
    invalid('INVALID'),
    duplicate('DUPLICATE'),
    error('ERROR'),
    unknown('UNKNOWN');
    const AccessProfileComputedAttributeStatus(this.value);
    final String value;
}
