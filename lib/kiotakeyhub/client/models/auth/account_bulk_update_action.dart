enum AccountBulkUpdateAction {
    changeLicenseRoleToPro("CHANGE_LICENSE_ROLE_TO_PRO"),
    changeLicenseRoleToBusiness("CHANGE_LICENSE_ROLE_TO_BUSINESS"),
    changeLicenseRoleToIga("CHANGE_LICENSE_ROLE_TO_IGA"),
    markForRename("MARK_FOR_RENAME");
    const AccountBulkUpdateAction(this.value);
    final String value;
}
