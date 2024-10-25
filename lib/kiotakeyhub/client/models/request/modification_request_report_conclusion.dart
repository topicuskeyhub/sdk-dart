enum ModificationRequestReportConclusion {
    ok("OK"),
    cannotBeExecuted("CANNOT_BE_EXECUTED");
    const ModificationRequestReportConclusion(this.value);
    final String value;
}
