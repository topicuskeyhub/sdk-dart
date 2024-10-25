enum UpdateGroupMembershipType {
    add("ADD"),
    modify("MODIFY"),
    remove("REMOVE");
    const UpdateGroupMembershipType(this.value);
    final String value;
}
