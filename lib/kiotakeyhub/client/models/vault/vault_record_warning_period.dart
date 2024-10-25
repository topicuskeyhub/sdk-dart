enum VaultRecordWarningPeriod {
    atExpiration("AT_EXPIRATION"),
    twoWeeks("TWO_WEEKS"),
    oneMonth("ONE_MONTH"),
    twoMonths("TWO_MONTHS"),
    threeMonths("THREE_MONTHS"),
    sixMonths("SIX_MONTHS"),
    never("NEVER");
    const VaultRecordWarningPeriod(this.value);
    final String value;
}
