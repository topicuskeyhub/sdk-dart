enum BooleanEnum {
    trueEscaped('TRUE'),
    falseEscaped('FALSE'),
    both('BOTH');
    const BooleanEnum(this.value);
    final String value;
}
