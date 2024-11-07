enum ItemMarkerType {
    tlsDisabled('TLS_DISABLED'),
    tlsUnverified('TLS_UNVERIFIED'),
    weakPasswordHashing('WEAK_PASSWORD_HASHING'),
    groupNoManager('GROUP_NO_MANAGER'),
    groupOneManager('GROUP_ONE_MANAGER'),
    groupUnreadableVault('GROUP_UNREADABLE_VAULT'),
    groupUnrecoverableVault('GROUP_UNRECOVERABLE_VAULT'),
    groupCriteriaUnsatisfiedAuditInterval('GROUP_CRITERIA_UNSATISFIED_AUDIT_INTERVAL'),
    groupCriteriaUnsatisfiedAuditMonths('GROUP_CRITERIA_UNSATISFIED_AUDIT_MONTHS'),
    groupCriteriaUnsatisfiedAuthorizingGroupProvisioning('GROUP_CRITERIA_UNSATISFIED_AUTHORIZING_GROUP_PROVISIONING'),
    groupCriteriaUnsatisfiedAuthorizingGroupMembership('GROUP_CRITERIA_UNSATISFIED_AUTHORIZING_GROUP_MEMBERSHIP'),
    groupCriteriaUnsatisfiedAuthorizingGroupDelegation('GROUP_CRITERIA_UNSATISFIED_AUTHORIZING_GROUP_DELEGATION'),
    groupCriteriaUnsatisfiedAuthorizingGroupAuditing('GROUP_CRITERIA_UNSATISFIED_AUTHORIZING_GROUP_AUDITING'),
    groupCriteriaUnsatisfiedRecordTrail('GROUP_CRITERIA_UNSATISFIED_RECORD_TRAIL'),
    groupCriteriaUnsatisfiedRotatingPasswordRequired('GROUP_CRITERIA_UNSATISFIED_ROTATING_PASSWORD_REQUIRED'),
    groupCriteriaUnsatisfiedVaultRequiresActivation('GROUP_CRITERIA_UNSATISFIED_VAULT_REQUIRES_ACTIVATION'),
    groupCriteriaUnsatisfiedMinimumNrManagers('GROUP_CRITERIA_UNSATISFIED_MINIMUM_NR_MANAGERS');
    const ItemMarkerType(this.value);
    final String value;
}
