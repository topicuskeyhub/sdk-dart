enum GroupEditRequiredReason {
    oneManager('ONE_MANAGER'),
    criteriaUnsatisfiedAuditInterval('CRITERIA_UNSATISFIED_AUDIT_INTERVAL'),
    criteriaUnsatisfiedAuditMonths('CRITERIA_UNSATISFIED_AUDIT_MONTHS'),
    criteriaUnsatisfiedAuthorizingGroupProvisioning('CRITERIA_UNSATISFIED_AUTHORIZING_GROUP_PROVISIONING'),
    criteriaUnsatisfiedAuthorizingGroupMembership('CRITERIA_UNSATISFIED_AUTHORIZING_GROUP_MEMBERSHIP'),
    criteriaUnsatisfiedAuthorizingGroupDelegation('CRITERIA_UNSATISFIED_AUTHORIZING_GROUP_DELEGATION'),
    criteriaUnsatisfiedAuthorizingGroupAuditing('CRITERIA_UNSATISFIED_AUTHORIZING_GROUP_AUDITING'),
    criteriaUnsatisfiedRecordTrail('CRITERIA_UNSATISFIED_RECORD_TRAIL'),
    criteriaUnsatisfiedRotatingPasswordRequired('CRITERIA_UNSATISFIED_ROTATING_PASSWORD_REQUIRED'),
    criteriaUnsatisfiedVaultRequiresActivation('CRITERIA_UNSATISFIED_VAULT_REQUIRES_ACTIVATION'),
    criteriaUnsatisfiedMinimumNrManagers('CRITERIA_UNSATISFIED_MINIMUM_NR_MANAGERS');
    const GroupEditRequiredReason(this.value);
    final String value;
}
