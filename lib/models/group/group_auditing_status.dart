enum GroupAuditingStatus {
    audited('AUDITED'),
    unaudited('UNAUDITED'),
    overdue('OVERDUE');
    const GroupAuditingStatus(this.value);
    final String value;
}
