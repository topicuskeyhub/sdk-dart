enum PasswordMode {
    unset('UNSET'),
    onePasswordUnsynced('ONE_PASSWORD_UNSYNCED'),
    onePassword('ONE_PASSWORD'),
    twoPasswords('TWO_PASSWORDS');
    const PasswordMode(this.value);
    final String value;
}
