// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import './account_attribute_definition.dart';
import './account_attribute_source.dart';
import './account_attribute_value_additional_objects.dart';
import './account_attribute_value_status.dart';

/// auto generated
class AccountAttributeValue extends Linkable implements Parsable {
    ///  The additionalObjects property
    AccountAttributeValueAdditionalObjects? additionalObjects;
    ///  The attribute property
    AccountAttributeDefinition? attribute;
    ///  The context property
    String? context;
    ///  The date property
    DateTime? date;
    ///  The latestForSource property
    bool? latestForSource;
    ///  The source property
    AccountAttributeSource? source;
    ///  The status property
    AccountAttributeValueStatus? status;
    ///  The value property
    String? value;
    /// Instantiates a new [AccountAttributeValue] and sets the default values.
    AccountAttributeValue() : super() {
        type_ = 'identity.AccountAttributeValue';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccountAttributeValue createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountAttributeValue();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<AccountAttributeValueAdditionalObjects>(AccountAttributeValueAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['attribute'] = (node) => attribute = node.getObjectValue<AccountAttributeDefinition>(AccountAttributeDefinition.createFromDiscriminatorValue);
        deserializerMap['context'] = (node) => context = node.getStringValue();
        deserializerMap['date'] = (node) => date = node.getDateTimeValue();
        deserializerMap['latestForSource'] = (node) => latestForSource = node.getBoolValue();
        deserializerMap['source'] = (node) => source = node.getEnumValue<AccountAttributeSource>((stringValue) => AccountAttributeSource.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['status'] = (node) => status = node.getEnumValue<AccountAttributeValueStatus>((stringValue) => AccountAttributeValueStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['value'] = (node) => value = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountAttributeValueAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeObjectValue<AccountAttributeDefinition>('attribute', attribute);
        writer.writeStringValue('context', context);
        writer.writeDateTimeValue('date', date);
        writer.writeBoolValue('latestForSource', value:latestForSource);
        writer.writeEnumValue<AccountAttributeSource>('source', source, (e) => e?.value);
        writer.writeEnumValue<AccountAttributeValueStatus>('status', status, (e) => e?.value);
        writer.writeStringValue('value', value);
    }
}
