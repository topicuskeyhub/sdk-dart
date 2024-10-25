enum PostAdditionalQueryParameterType {
    accessProfileProvisioning("accessProfileProvisioning"),
    audit("audit"),
    provgroups("provgroups"),
    serviceAccounts("serviceAccounts");
    const PostAdditionalQueryParameterType(this.value);
    final String value;
}
