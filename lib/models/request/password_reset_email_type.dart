enum PasswordResetEmailType {
    none('NONE'),
    reactivation('REACTIVATION'),
    externalEscaped('EXTERNAL');
    const PasswordResetEmailType(this.value);
    final String value;
}
