enum PostAdditionalQueryParameterType {
    audit('audit'),
    deleteTile('deleteTile'),
    groupclients('groupclients'),
    groups('groups'),
    secret('secret'),
    tile('tile'),
    vaultRecordCount('vaultRecordCount');
    const PostAdditionalQueryParameterType(this.value);
    final String value;
}
