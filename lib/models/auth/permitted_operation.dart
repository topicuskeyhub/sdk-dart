enum PermittedOperation {
    create('CREATE'),
    read('READ'),
    update('UPDATE'),
    delete('DELETE');
    const PermittedOperation(this.value);
    final String value;
}
