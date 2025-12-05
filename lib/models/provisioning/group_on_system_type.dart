// ignore_for_file: type=lint
/// auto generated
enum GroupOnSystemType {
    posixGroup('POSIX_GROUP'),
    groupOfNames('GROUP_OF_NAMES'),
    groupOfUniqueNames('GROUP_OF_UNIQUE_NAMES'),
    groupGlobalSecurity('GROUP_GLOBAL_SECURITY'),
    groupLocalSecurity('GROUP_LOCAL_SECURITY'),
    groupUniversalSecurity('GROUP_UNIVERSAL_SECURITY'),
    groupUnknown('GROUP_UNKNOWN'),
    azureRole('AZURE_ROLE'),
    azureUnifiedGroup('AZURE_UNIFIED_GROUP'),
    azureSecurityGroup('AZURE_SECURITY_GROUP'),
    azureDynamicUnifiedGroup('AZURE_DYNAMIC_UNIFIED_GROUP'),
    azureDynamicSecurityGroup('AZURE_DYNAMIC_SECURITY_GROUP'),
    scim('SCIM'),
    accountOnly('ACCOUNT_ONLY');
    const GroupOnSystemType(this.value);
    final String value;
}
