// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './account_attribute_definition.dart';
import './account_attribute_source.dart';
import './account_attribute_value_selection_status.dart';

/// auto generated
class AccountAttributeValueSummary extends NonLinkable implements Parsable {
    ///  The attribute property
    AccountAttributeDefinition? attribute;
    ///  The context property
    String? context;
    ///  The currentValue property
    String? currentValue;
    ///  The date property
    DateTime? date;
    ///  The expectedValue property
    String? expectedValue;
    ///  The source property
    AccountAttributeSource? source;
    ///  The status property
    AccountAttributeValueSelectionStatus? status;
    /// Instantiates a new [AccountAttributeValueSummary] and sets the default values.
    AccountAttributeValueSummary() : super() {
        type_ = 'identity.AccountAttributeValueSummary';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccountAttributeValueSummary createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountAttributeValueSummary();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['attribute'] = (node) => attribute = node.getObjectValue<AccountAttributeDefinition>(AccountAttributeDefinition.createFromDiscriminatorValue);
        deserializerMap['context'] = (node) => context = node.getStringValue();
        deserializerMap['currentValue'] = (node) => currentValue = node.getStringValue();
        deserializerMap['date'] = (node) => date = node.getDateTimeValue();
        deserializerMap['expectedValue'] = (node) => expectedValue = node.getStringValue();
        deserializerMap['source'] = (node) => source = node.getEnumValue<AccountAttributeSource>((stringValue) => AccountAttributeSource.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['status'] = (node) => status = node.getEnumValue<AccountAttributeValueSelectionStatus>((stringValue) => AccountAttributeValueSelectionStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountAttributeDefinition>('attribute', attribute);
        writer.writeStringValue('context', context);
        writer.writeStringValue('currentValue', currentValue);
        writer.writeDateTimeValue('date', date);
        writer.writeStringValue('expectedValue', expectedValue);
        writer.writeEnumValue<AccountAttributeSource>('source', source, (e) => e?.value);
        writer.writeEnumValue<AccountAttributeValueSelectionStatus>('status', status, (e) => e?.value);
    }
}
