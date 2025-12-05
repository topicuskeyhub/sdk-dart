// ignore_for_file: type=lint
/// auto generated
enum ModificationRequestReportError {
    adminGroupCannotBeMoved('ADMIN_GROUP_CANNOT_BE_MOVED'),
    auditorGroupCannotBeMoved('AUDITOR_GROUP_CANNOT_BE_MOVED'),
    groupFulfillsGlobalRole('GROUP_FULFILLS_GLOBAL_ROLE'),
    groupOwnsOrHelpdesksDirectory('GROUP_OWNS_OR_HELPDESKS_DIRECTORY'),
    groupOwnsOrAdminsSystem('GROUP_OWNS_OR_ADMINS_SYSTEM'),
    groupOwnsOu('GROUP_OWNS_OU'),
    groupPartOfNestingTree('GROUP_PART_OF_NESTING_TREE'),
    managerCannotBeMoved('MANAGER_CANNOT_BE_MOVED'),
    multipleOus('MULTIPLE_OUS'),
    oneMoveableVaultAccessOfMultipleMembers('ONE_MOVEABLE_VAULT_ACCESS_OF_MULTIPLE_MEMBERS'),
    zeroMoveableVaultAccessMembers('ZERO_MOVEABLE_VAULT_ACCESS_MEMBERS'),
    groupOwnerClientappWithTechadminOtherOu('GROUP_OWNER_CLIENTAPP_WITH_TECHADMIN_OTHER_OU'),
    groupTechadminClientappWithOwnerOtherOu('GROUP_TECHADMIN_CLIENTAPP_WITH_OWNER_OTHER_OU'),
    authorizedGroupCannotBeRemoved('AUTHORIZED_GROUP_CANNOT_BE_REMOVED'),
    hasNestedGroupCannotBeRemoved('HAS_NESTED_GROUP_CANNOT_BE_REMOVED'),
    serviceAccountCannotBeRemoved('SERVICE_ACCOUNT_CANNOT_BE_REMOVED'),
    applicationCannotBeRemoved('APPLICATION_CANNOT_BE_REMOVED'),
    systemCannotBeRemoved('SYSTEM_CANNOT_BE_REMOVED'),
    groupOnSystemCannotBeRemoved('GROUP_ON_SYSTEM_CANNOT_BE_REMOVED'),
    groupOwnsAccessProfile('GROUP_OWNS_ACCESS_PROFILE');
    const ModificationRequestReportError(this.value);
    final String value;
}
