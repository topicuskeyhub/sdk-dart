enum GetAdditionalQueryParameterType {
    audit("audit"),
    deleteTile("deleteTile"),
    groupclients("groupclients"),
    groups("groups"),
    secret("secret"),
    tile("tile"),
    vaultRecordCount("vaultRecordCount");
    const GetAdditionalQueryParameterType(this.value);
    final String value;
}
