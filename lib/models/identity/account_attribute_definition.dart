// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import './account_attribute_definition_additional_objects.dart';
import './account_attribute_format.dart';
import './account_attribute_system_definition.dart';

/// auto generated
class AccountAttributeDefinition extends Linkable implements Parsable {
    ///  The additionalObjects property
    AccountAttributeDefinitionAdditionalObjects? additionalObjects;
    ///  The format property
    AccountAttributeFormat? format;
    ///  The name property
    String? name;
    ///  The systemDefinition property
    AccountAttributeSystemDefinition? systemDefinition;
    /// Instantiates a new [AccountAttributeDefinition] and sets the default values.
    AccountAttributeDefinition() : super() {
        type_ = 'identity.AccountAttributeDefinition';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccountAttributeDefinition createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountAttributeDefinition();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<AccountAttributeDefinitionAdditionalObjects>(AccountAttributeDefinitionAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['format'] = (node) => format = node.getEnumValue<AccountAttributeFormat>((stringValue) => AccountAttributeFormat.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['systemDefinition'] = (node) => systemDefinition = node.getEnumValue<AccountAttributeSystemDefinition>((stringValue) => AccountAttributeSystemDefinition.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountAttributeDefinitionAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeEnumValue<AccountAttributeFormat>('format', format, (e) => e?.value);
        writer.writeStringValue('name', name);
        writer.writeEnumValue<AccountAttributeSystemDefinition>('systemDefinition', systemDefinition, (e) => e?.value);
    }
}
