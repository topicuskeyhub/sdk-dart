enum SubjectFormat {
    id("ID"),
    upn("UPN"),
    username("USERNAME"),
    email("EMAIL");
    const SubjectFormat(this.value);
    final String value;
}
