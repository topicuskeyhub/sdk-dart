enum VaultRecoveryAvailability {
    none('NONE'),
    recoveryKeyOnly('RECOVERY_KEY_ONLY'),
    full('FULL');
    const VaultRecoveryAvailability(this.value);
    final String value;
}
