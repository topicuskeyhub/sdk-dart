enum PasswordRotationScheme {
    manual('MANUAL'),
    manualStoredInVault('MANUAL_STORED_IN_VAULT'),
    daily('DAILY');
    const PasswordRotationScheme(this.value);
    final String value;
}
