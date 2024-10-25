enum GroupClassificationConformance {
    matchesAllCriteria("MATCHES_ALL_CRITERIA"),
    unmatchedFixableCriteria("UNMATCHED_FIXABLE_CRITERIA"),
    unmatchedCriteria("UNMATCHED_CRITERIA");
    const GroupClassificationConformance(this.value);
    final String value;
}
