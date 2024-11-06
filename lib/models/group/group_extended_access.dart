enum GroupExtendedAccess {
    notAllowed('NOT_ALLOWED'),
    oneWeek('ONE_WEEK'),
    twoWeeks('TWO_WEEKS'),
    twoWeeksNoConfirm('TWO_WEEKS_NO_CONFIRM');
    const GroupExtendedAccess(this.value);
    final String value;
}
