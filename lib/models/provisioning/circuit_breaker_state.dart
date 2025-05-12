// ignore_for_file: type=lint
/// auto generated
enum CircuitBreakerState {
    closed('CLOSED'),
    open('OPEN'),
    halfOpen('HALF_OPEN'),
    forcedOpen('FORCED_OPEN');
    const CircuitBreakerState(this.value);
    final String value;
}
