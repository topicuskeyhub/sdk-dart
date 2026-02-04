// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../identity/account_attribute_definition.dart';
import './identity_source.dart';

/// auto generated
class CSVImportIdentitySource extends IdentitySource implements Parsable {
    ///  The identifier property
    AccountAttributeDefinition? identifier;
    /// Instantiates a new [CSVImportIdentitySource] and sets the default values.
    CSVImportIdentitySource() : super() {
        type_ = 'identitysource.CSVImportIdentitySource';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static CSVImportIdentitySource createFromDiscriminatorValue(ParseNode parseNode) {
        return CSVImportIdentitySource();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['identifier'] = (node) => identifier = node.getObjectValue<AccountAttributeDefinition>(AccountAttributeDefinition.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountAttributeDefinition>('identifier', identifier);
    }
}
