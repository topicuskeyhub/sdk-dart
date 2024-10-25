enum AccountValidity {
    valid("VALID"),
    notApplicable("NOT_APPLICABLE"),
    reregistrationRequired("REREGISTRATION_REQUIRED"),
    disabled("DISABLED"),
    directoryDisabled("DIRECTORY_DISABLED"),
    invalidInDirectory("INVALID_IN_DIRECTORY");
    const AccountValidity(this.value);
    final String value;
}
