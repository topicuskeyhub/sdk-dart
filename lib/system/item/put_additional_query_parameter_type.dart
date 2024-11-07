enum PutAdditionalQueryParameterType {
    account('account'),
    audit('audit'),
    issuedPermissions('issuedPermissions'),
    loginName('loginName'),
    managementPermissions('managementPermissions'),
    markers('markers'),
    statistics('statistics'),
    supportedGroupTypes('supportedGroupTypes');
    const PutAdditionalQueryParameterType(this.value);
    final String value;
}
