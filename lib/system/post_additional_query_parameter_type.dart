enum PostAdditionalQueryParameterType {
    account('account'),
    audit('audit'),
    issuedPermissions('issuedPermissions'),
    loginName('loginName'),
    managementPermissions('managementPermissions'),
    markers('markers'),
    statistics('statistics'),
    supportedGroupTypes('supportedGroupTypes');
    const PostAdditionalQueryParameterType(this.value);
    final String value;
}
