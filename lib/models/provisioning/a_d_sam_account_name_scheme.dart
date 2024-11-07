enum ADSamAccountNameScheme {
    omit('OMIT'),
    truncate('TRUNCATE'),
    transfer('TRANSFER'),
    transferTruncate('TRANSFER_TRUNCATE'),
    username('USERNAME');
    const ADSamAccountNameScheme(this.value);
    final String value;
}
