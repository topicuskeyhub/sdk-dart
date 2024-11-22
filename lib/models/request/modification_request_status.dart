// ignore_for_file: type=lint
/// auto generated
enum ModificationRequestStatus {
    requested('REQUESTED'),
    allowed('ALLOWED'),
    disallowed('DISALLOWED'),
    cancelled('CANCELLED');
    const ModificationRequestStatus(this.value);
    final String value;
}
