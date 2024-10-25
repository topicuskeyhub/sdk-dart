enum PutAdditionalQueryParameterType {
    audit("audit"),
    deleteTile("deleteTile"),
    groupclients("groupclients"),
    groups("groups"),
    secret("secret"),
    tile("tile"),
    vaultRecordCount("vaultRecordCount");
    const PutAdditionalQueryParameterType(this.value);
    final String value;
}
