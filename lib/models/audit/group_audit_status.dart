enum GroupAuditStatus {
    NEWEscaped("NEW"),
    draft("DRAFT"),
    underReview("UNDER_REVIEW"),
    FINALEscaped("FINAL");
    const GroupAuditStatus(this.value);
    final String value;
}
