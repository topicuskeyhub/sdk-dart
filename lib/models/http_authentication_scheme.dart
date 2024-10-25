enum HttpAuthenticationScheme {
    none("NONE"),
    basic("BASIC"),
    bearer("BEARER"),
    custom("CUSTOM");
    const HttpAuthenticationScheme(this.value);
    final String value;
}
