enum AccountVaultStatus {
    notCreated('NOT_CREATED'),
    initializing('INITIALIZING'),
    locked('LOCKED'),
    unlocked('UNLOCKED');
    const AccountVaultStatus(this.value);
    final String value;
}
