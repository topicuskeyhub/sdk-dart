enum PostAdditionalQueryParameterType {
    audit('audit'),
    groups('groups'),
    secret('secret'),
    supportedFeatures('supportedFeatures');
    const PostAdditionalQueryParameterType(this.value);
    final String value;
}
