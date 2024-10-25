enum PutAdditionalQueryParameterType {
    audit("audit"),
    groups("groups"),
    secret("secret"),
    supportedFeatures("supportedFeatures");
    const PutAdditionalQueryParameterType(this.value);
    final String value;
}
