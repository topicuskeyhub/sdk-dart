// ignore_for_file: type=lint
/// auto generated
enum ModificationRequestReportChange {
    accountRemovedFromGroup('ACCOUNT_REMOVED_FROM_GROUP'),
    modificationRequestCancelled('MODIFICATION_REQUEST_CANCELLED'),
    provisioningGroupRemovedOutOfScope('PROVISIONING_GROUP_REMOVED_OUT_OF_SCOPE'),
    provisioningGroupRemovedOwner('PROVISIONING_GROUP_REMOVED_OWNER'),
    serviceAccountGroupRemovedOutOfScope('SERVICE_ACCOUNT_GROUP_REMOVED_OUT_OF_SCOPE'),
    serviceAccountGroupRemovedOwner('SERVICE_ACCOUNT_GROUP_REMOVED_OWNER'),
    groupClientRemovedOutOfScope('GROUP_CLIENT_REMOVED_OUT_OF_SCOPE'),
    groupClientRemovedOwner('GROUP_CLIENT_REMOVED_OWNER'),
    groupClassificationRemoved('GROUP_CLASSIFICATION_REMOVED'),
    groupVaultRecoveryReset('GROUP_VAULT_RECOVERY_RESET'),
    groupMadePublic('GROUP_MADE_PUBLIC'),
    groupAuthorizationRemoved('GROUP_AUTHORIZATION_REMOVED'),
    groupNestingRemoved('GROUP_NESTING_REMOVED'),
    serviceAccountRemoved('SERVICE_ACCOUNT_REMOVED'),
    organizationalUnitRemoved('ORGANIZATIONAL_UNIT_REMOVED'),
    accessProfileRemoved('ACCESS_PROFILE_REMOVED'),
    groupActivationForVaultDisabled('GROUP_ACTIVATION_FOR_VAULT_DISABLED'),
    groupActivationForSsoDisabled('GROUP_ACTIVATION_FOR_SSO_DISABLED'),
    groupActivationForProvisioningDisabled('GROUP_ACTIVATION_FOR_PROVISIONING_DISABLED');
    const ModificationRequestReportChange(this.value);
    final String value;
}
