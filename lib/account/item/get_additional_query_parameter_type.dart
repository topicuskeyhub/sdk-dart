enum GetAdditionalQueryParameterType {
    activeLogin("activeLogin"),
    audit("audit"),
    groups("groups"),
    pendingRecoveryRequests("pendingRecoveryRequests"),
    settings("settings"),
    storedAttributes("storedAttributes"),
    vault("vault");
    const GetAdditionalQueryParameterType(this.value);
    final String value;
}
