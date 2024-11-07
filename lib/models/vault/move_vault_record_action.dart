enum MoveVaultRecordAction {
    move('MOVE'),
    copy('COPY'),
    share('SHARE');
    const MoveVaultRecordAction(this.value);
    final String value;
}
