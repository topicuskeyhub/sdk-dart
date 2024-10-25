enum PutAdditionalQueryParameterType {
    activationStatus("activationStatus"),
    audit("audit"),
    deleteTile("deleteTile"),
    parent("parent"),
    passwordMetadata("passwordMetadata"),
    secret("secret"),
    shareSummary("shareSummary"),
    shares("shares"),
    tile("tile"),
    vaultholder("vaultholder");
    const PutAdditionalQueryParameterType(this.value);
    final String value;
}
