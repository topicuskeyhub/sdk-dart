enum AuditRequiredSourceType {
    conform('CONFORM'),
    periodic('PERIODIC'),
    requested('REQUESTED');
    const AuditRequiredSourceType(this.value);
    final String value;
}
