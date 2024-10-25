enum GroupRequestStatus {
    member("MEMBER"),
    requestOpen("REQUEST_OPEN"),
    available("AVAILABLE");
    const GroupRequestStatus(this.value);
    final String value;
}
