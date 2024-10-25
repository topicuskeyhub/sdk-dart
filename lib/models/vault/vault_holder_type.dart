enum VaultHolderType {
    account("ACCOUNT"),
    client("CLIENT"),
    group("GROUP");
    const VaultHolderType(this.value);
    final String value;
}
