enum DirectoryRotatingPassword {
    defaultOff("DEFAULT_OFF"),
    defaultOn("DEFAULT_ON"),
    alwaysOn("ALWAYS_ON");
    const DirectoryRotatingPassword(this.value);
    final String value;
}
