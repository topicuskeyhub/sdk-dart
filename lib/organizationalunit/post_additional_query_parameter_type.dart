enum PostAdditionalQueryParameterType {
    audit("audit"),
    createAsParentOf("createAsParentOf"),
    settings("settings");
    const PostAdditionalQueryParameterType(this.value);
    final String value;
}
