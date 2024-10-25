enum ModificationRequestReportChange {
    accountRemovedFromGroup("ACCOUNT_REMOVED_FROM_GROUP"),
    modificationRequestCancelled("MODIFICATION_REQUEST_CANCELLED"),
    provisioningGroupRemovedOutOfScope("PROVISIONING_GROUP_REMOVED_OUT_OF_SCOPE"),
    provisioningGroupRemovedOwner("PROVISIONING_GROUP_REMOVED_OWNER"),
    serviceAccountGroupRemovedOutOfScope("SERVICE_ACCOUNT_GROUP_REMOVED_OUT_OF_SCOPE"),
    serviceAccountGroupRemovedOwner("SERVICE_ACCOUNT_GROUP_REMOVED_OWNER");
    const ModificationRequestReportChange(this.value);
    final String value;
}
