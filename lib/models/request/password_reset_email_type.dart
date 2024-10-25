enum PasswordResetEmailType {
    none("NONE"),
    reactivation("REACTIVATION"),
    EXTERNALEscaped("EXTERNAL");
    const PasswordResetEmailType(this.value);
    final String value;
}
