enum GetAdditionalQueryParameterType {
    activationStatus("activationStatus"),
    audit("audit"),
    parent("parent"),
    passwordMetadata("passwordMetadata"),
    secret("secret"),
    shareSummary("shareSummary"),
    shares("shares"),
    tile("tile"),
    vaultholder("vaultholder");
    const GetAdditionalQueryParameterType(this.value);
    final String value;
}