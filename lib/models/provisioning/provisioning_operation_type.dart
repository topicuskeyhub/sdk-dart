// ignore_for_file: type=lint
/// auto generated
enum ProvisioningOperationType {
    initAccount('INIT_ACCOUNT'),
    changePassword('CHANGE_PASSWORD'),
    rotatePasswords('ROTATE_PASSWORDS'),
    updateAccountAttributes('UPDATE_ACCOUNT_ATTRIBUTES'),
    preProvisioningCheck('PRE_PROVISIONING_CHECK'),
    syncMembership('SYNC_MEMBERSHIP'),
    syncCollection('SYNC_COLLECTION'),
    syncAccount('SYNC_ACCOUNT'),
    syncServiceAccount('SYNC_SERVICE_ACCOUNT'),
    syncIncremental('SYNC_INCREMENTAL'),
    syncMetadata('SYNC_METADATA'),
    syncFull('SYNC_FULL'),
    deactivateSystem('DEACTIVATE_SYSTEM'),
    updateSystem('UPDATE_SYSTEM'),
    createGroupOnSystem('CREATE_GROUP_ON_SYSTEM'),
    removeGroupOnSystem('REMOVE_GROUP_ON_SYSTEM'),
    unlinkGroupOnSystem('UNLINK_GROUP_ON_SYSTEM'),
    destroyAccount('DESTROY_ACCOUNT'),
    destroyServiceAccount('DESTROY_SERVICE_ACCOUNT'),
    cleanupOldAccounts('CLEANUP_OLD_ACCOUNTS');
    const ProvisioningOperationType(this.value);
    final String value;
}
