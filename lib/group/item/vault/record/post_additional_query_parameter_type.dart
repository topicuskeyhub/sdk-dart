enum PostAdditionalQueryParameterType {
    activationStatus('activationStatus'),
    audit('audit'),
    deleteTile('deleteTile'),
    parent('parent'),
    passwordMetadata('passwordMetadata'),
    secret('secret'),
    shareSummary('shareSummary'),
    shares('shares'),
    tile('tile'),
    vaultholder('vaultholder');
    const PostAdditionalQueryParameterType(this.value);
    final String value;
}
