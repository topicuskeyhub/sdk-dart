enum CircuitBreakerState {
    closed("CLOSED"),
    open("OPEN"),
    halfOpen("HALF_OPEN");
    const CircuitBreakerState(this.value);
    final String value;
}
