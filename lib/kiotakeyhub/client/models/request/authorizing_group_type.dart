enum AuthorizingGroupType {
    provisioning("PROVISIONING"),
    membership("MEMBERSHIP"),
    delegation("DELEGATION"),
    auditing("AUDITING");
    const AuthorizingGroupType(this.value);
    final String value;
}
