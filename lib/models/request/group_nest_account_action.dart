enum GroupNestAccountAction {
    remove("REMOVE"),
    convert("CONVERT"),
    retain("RETAIN");
    const GroupNestAccountAction(this.value);
    final String value;
}
