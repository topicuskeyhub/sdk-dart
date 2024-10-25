enum ModificationRequestStatus {
    requested("REQUESTED"),
    allowed("ALLOWED"),
    disallowed("DISALLOWED"),
    cancelled("CANCELLED");
    const ModificationRequestStatus(this.value);
    final String value;
}
