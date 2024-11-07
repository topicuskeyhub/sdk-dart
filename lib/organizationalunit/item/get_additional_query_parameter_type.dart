enum GetAdditionalQueryParameterType {
    audit('audit'),
    createAsParentOf('createAsParentOf'),
    settings('settings');
    const GetAdditionalQueryParameterType(this.value);
    final String value;
}
