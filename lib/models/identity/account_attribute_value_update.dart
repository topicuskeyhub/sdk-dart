// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './account_attribute_definition.dart';

/// auto generated
class AccountAttributeValueUpdate extends NonLinkable implements Parsable {
    ///  The attribute property
    AccountAttributeDefinition? attribute;
    ///  The value property
    String? value;
    /// Instantiates a new [AccountAttributeValueUpdate] and sets the default values.
    AccountAttributeValueUpdate() : super() {
        type_ = 'identity.AccountAttributeValueUpdate';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccountAttributeValueUpdate createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountAttributeValueUpdate();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['attribute'] = (node) => attribute = node.getObjectValue<AccountAttributeDefinition>(AccountAttributeDefinition.createFromDiscriminatorValue);
        deserializerMap['value'] = (node) => value = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountAttributeDefinition>('attribute', attribute);
        writer.writeStringValue('value', value);
    }
}
