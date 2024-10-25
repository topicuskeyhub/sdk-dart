enum GroupVisibility {
    all("ALL"),
    public("PUBLIC"),
    publicOrMember("PUBLIC_OR_MEMBER");
    const GroupVisibility(this.value);
    final String value;
}
