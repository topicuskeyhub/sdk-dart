// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import './account_attribute_definition.dart';
import './account_attribute_rule_additional_objects.dart';

/// auto generated
class AccountAttributeRule extends Linkable implements Parsable {
    ///  The additionalObjects property
    AccountAttributeRuleAdditionalObjects? additionalObjects;
    ///  The allowOverride property
    bool? allowOverride;
    ///  The allowSelfService property
    bool? allowSelfService;
    ///  The attribute property
    AccountAttributeDefinition? attribute;
    ///  The defaultValue property
    String? defaultValue;
    ///  The priorityDirectory property
    int? priorityDirectory;
    ///  The priorityExternalSource property
    int? priorityExternalSource;
    ///  The priorityFormula property
    int? priorityFormula;
    ///  The prioritySCIM property
    int? prioritySCIM;
    ///  The script property
    String? script;
    ///  The updateAutomatically property
    bool? updateAutomatically;
    /// Instantiates a new [AccountAttributeRule] and sets the default values.
    AccountAttributeRule() : super() {
        type_ = 'identity.AccountAttributeRule';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccountAttributeRule createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountAttributeRule();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<AccountAttributeRuleAdditionalObjects>(AccountAttributeRuleAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['allowOverride'] = (node) => allowOverride = node.getBoolValue();
        deserializerMap['allowSelfService'] = (node) => allowSelfService = node.getBoolValue();
        deserializerMap['attribute'] = (node) => attribute = node.getObjectValue<AccountAttributeDefinition>(AccountAttributeDefinition.createFromDiscriminatorValue);
        deserializerMap['defaultValue'] = (node) => defaultValue = node.getStringValue();
        deserializerMap['priorityDirectory'] = (node) => priorityDirectory = node.getIntValue();
        deserializerMap['priorityExternalSource'] = (node) => priorityExternalSource = node.getIntValue();
        deserializerMap['priorityFormula'] = (node) => priorityFormula = node.getIntValue();
        deserializerMap['prioritySCIM'] = (node) => prioritySCIM = node.getIntValue();
        deserializerMap['script'] = (node) => script = node.getStringValue();
        deserializerMap['updateAutomatically'] = (node) => updateAutomatically = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountAttributeRuleAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeBoolValue('allowOverride', value:allowOverride);
        writer.writeBoolValue('allowSelfService', value:allowSelfService);
        writer.writeObjectValue<AccountAttributeDefinition>('attribute', attribute);
        writer.writeStringValue('defaultValue', defaultValue);
        writer.writeIntValue('priorityDirectory', priorityDirectory);
        writer.writeIntValue('priorityExternalSource', priorityExternalSource);
        writer.writeIntValue('priorityFormula', priorityFormula);
        writer.writeIntValue('prioritySCIM', prioritySCIM);
        writer.writeStringValue('script', script);
        writer.writeBoolValue('updateAutomatically', value:updateAutomatically);
    }
}
