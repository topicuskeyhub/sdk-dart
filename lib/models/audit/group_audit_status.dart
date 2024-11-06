enum GroupAuditStatus {
    newEscaped('NEW'),
    draft('DRAFT'),
    underReview('UNDER_REVIEW'),
    finalEscaped('FINAL');
    const GroupAuditStatus(this.value);
    final String value;
}
