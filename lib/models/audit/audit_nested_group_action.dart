enum AuditNestedGroupAction {
    include('INCLUDE'),
    exclude('EXCLUDE'),
    mismatch('MISMATCH');
    const AuditNestedGroupAction(this.value);
    final String value;
}
