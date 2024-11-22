// ignore_for_file: type=lint
/// auto generated
enum TLSLevel {
    verifiedPinned('VERIFIED_PINNED'),
    verified('VERIFIED'),
    securePinned('SECURE_PINNED'),
    secure('SECURE'),
    encrypted('ENCRYPTED'),
    unsecure('UNSECURE');
    const TLSLevel(this.value);
    final String value;
}
