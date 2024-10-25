enum GetAdditionalQueryParameterType {
    audit("audit"),
    groups("groups"),
    secret("secret"),
    supportedFeatures("supportedFeatures");
    const GetAdditionalQueryParameterType(this.value);
    final String value;
}
