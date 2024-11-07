enum AccountDirectoryStatus {
    initRequired('INIT_REQUIRED'),
    online('ONLINE'),
    degraded('DEGRADED'),
    nonRedundant('NON_REDUNDANT'),
    offline('OFFLINE'),
    disabled('DISABLED');
    const AccountDirectoryStatus(this.value);
    final String value;
}
