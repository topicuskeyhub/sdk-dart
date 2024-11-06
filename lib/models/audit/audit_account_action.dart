enum AuditAccountAction {
    approve('APPROVE'),
    changeToManager('CHANGE_TO_MANAGER'),
    changeToNormal('CHANGE_TO_NORMAL'),
    remove('REMOVE'),
    connectNested('CONNECT_NESTED');
    const AuditAccountAction(this.value);
    final String value;
}
