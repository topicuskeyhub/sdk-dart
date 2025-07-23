// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../identity/account_attribute_definition.dart';
import '../non_linkable.dart';

/// auto generated
class AttributeCustomization extends NonLinkable implements Parsable {
    ///  The attributeDefinition property
    AccountAttributeDefinition? attributeDefinition;
    ///  The name property
    String? name;
    ///  The script property
    String? script;
    /// Instantiates a new [AttributeCustomization] and sets the default values.
    AttributeCustomization() : super() {
        type_ = 'misc.AttributeCustomization';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AttributeCustomization createFromDiscriminatorValue(ParseNode parseNode) {
        return AttributeCustomization();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['attributeDefinition'] = (node) => attributeDefinition = node.getObjectValue<AccountAttributeDefinition>(AccountAttributeDefinition.createFromDiscriminatorValue);
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['script'] = (node) => script = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountAttributeDefinition>('attributeDefinition', attributeDefinition);
        writer.writeStringValue('name', name);
        writer.writeStringValue('script', script);
    }
}
