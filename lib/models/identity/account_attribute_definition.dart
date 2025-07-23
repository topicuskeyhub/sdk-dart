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
    ///  The list property
    bool? list;
    ///  The name property
    String? name;
    ///  The required property
    bool? required_;
    ///  The systemDefinition property
    AccountAttributeSystemDefinition? systemDefinition;
    ///  The unique property
    bool? unique;
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
        deserializerMap['list'] = (node) => list = node.getBoolValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['required'] = (node) => required_ = node.getBoolValue();
        deserializerMap['systemDefinition'] = (node) => systemDefinition = node.getEnumValue<AccountAttributeSystemDefinition>((stringValue) => AccountAttributeSystemDefinition.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['unique'] = (node) => unique = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountAttributeDefinitionAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeEnumValue<AccountAttributeFormat>('format', format, (e) => e?.value);
        writer.writeBoolValue('list', value:list);
        writer.writeStringValue('name', name);
        writer.writeBoolValue('required', value:required_);
        writer.writeEnumValue<AccountAttributeSystemDefinition>('systemDefinition', systemDefinition, (e) => e?.value);
        writer.writeBoolValue('unique', value:unique);
    }
}
