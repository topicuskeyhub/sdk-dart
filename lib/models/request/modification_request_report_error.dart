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
    groupTechadminClientappWithOwnerOtherOu('GROUP_TECHADMIN_CLIENTAPP_WITH_OWNER_OTHER_OU');
    const ModificationRequestReportError(this.value);
    final String value;
}
