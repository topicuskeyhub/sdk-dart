// ignore_for_file: type=lint
/// auto generated
enum OperationType {
    provisioningInitAccount('PROVISIONING_INIT_ACCOUNT'),
    provisioningChangePassword('PROVISIONING_CHANGE_PASSWORD'),
    provisioningRotatePasswords('PROVISIONING_ROTATE_PASSWORDS'),
    provisioningUpdateAccountAttributes('PROVISIONING_UPDATE_ACCOUNT_ATTRIBUTES'),
    provisioningPreProvisioningCheck('PROVISIONING_PRE_PROVISIONING_CHECK'),
    provisioningSyncMembership('PROVISIONING_SYNC_MEMBERSHIP'),
    provisioningSyncCollection('PROVISIONING_SYNC_COLLECTION'),
    provisioningSyncAccount('PROVISIONING_SYNC_ACCOUNT'),
    provisioningSyncServiceAccount('PROVISIONING_SYNC_SERVICE_ACCOUNT'),
    provisioningSyncIncremental('PROVISIONING_SYNC_INCREMENTAL'),
    provisioningSyncMetadata('PROVISIONING_SYNC_METADATA'),
    provisioningSyncFull('PROVISIONING_SYNC_FULL'),
    provisioningDeactivateSystem('PROVISIONING_DEACTIVATE_SYSTEM'),
    provisioningUpdateSystem('PROVISIONING_UPDATE_SYSTEM'),
    provisioningCreateGroupOnSystem('PROVISIONING_CREATE_GROUP_ON_SYSTEM'),
    provisioningRemoveGroupOnSystem('PROVISIONING_REMOVE_GROUP_ON_SYSTEM'),
    provisioningUnlinkGroupOnSystem('PROVISIONING_UNLINK_GROUP_ON_SYSTEM'),
    provisioningDestroyAccount('PROVISIONING_DESTROY_ACCOUNT'),
    provisioningDestroyServiceAccount('PROVISIONING_DESTROY_SERVICE_ACCOUNT'),
    provisioningCleanupOldAccounts('PROVISIONING_CLEANUP_OLD_ACCOUNTS'),
    identitySourceFullSync('IDENTITY_SOURCE_FULL_SYNC'),
    identitySourceIncrementalSync('IDENTITY_SOURCE_INCREMENTAL_SYNC');
    const OperationType(this.value);
    final String value;
}
