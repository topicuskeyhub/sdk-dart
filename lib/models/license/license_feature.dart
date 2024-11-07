enum LicenseFeature {
    clusterHa('CLUSTER_HA'),
    clusterHaEnterprise('CLUSTER_HA_ENTERPRISE'),
    workflows('WORKFLOWS'),
    nestedGroups('NESTED_GROUPS'),
    enterpriseOrganisation('ENTERPRISE_ORGANISATION'),
    compliancePlus('COMPLIANCE_PLUS'),
    offlineMode('OFFLINE_MODE'),
    serviceAccounts('SERVICE_ACCOUNTS'),
    ilm('ILM'),
    scim('SCIM'),
    groupActivation('GROUP_ACTIVATION');
    const LicenseFeature(this.value);
    final String value;
}
