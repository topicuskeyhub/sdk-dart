enum InternalAccountStatus {
    unverified('UNVERIFIED'),
    notActivated('NOT_ACTIVATED'),
    activationNotSent('ACTIVATION_NOT_SENT'),
    activationExpired('ACTIVATION_EXPIRED'),
    activated('ACTIVATED');
    const InternalAccountStatus(this.value);
    final String value;
}
