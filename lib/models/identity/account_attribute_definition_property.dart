// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './account_attribute_format.dart';

/// auto generated
class AccountAttributeDefinitionProperty extends NonLinkable implements Parsable {
    ///  The format property
    AccountAttributeFormat? format;
    ///  The list property
    bool? list;
    ///  The name property
    String? name;
    ///  The required property
    bool? required_;
    /// Instantiates a new [AccountAttributeDefinitionProperty] and sets the default values.
    AccountAttributeDefinitionProperty() : super() {
        type_ = 'identity.AccountAttributeDefinitionProperty';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccountAttributeDefinitionProperty createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountAttributeDefinitionProperty();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['format'] = (node) => format = node.getEnumValue<AccountAttributeFormat>((stringValue) => AccountAttributeFormat.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['list'] = (node) => list = node.getBoolValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['required'] = (node) => required_ = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<AccountAttributeFormat>('format', format, (e) => e?.value);
        writer.writeBoolValue('list', value:list);
        writer.writeStringValue('name', name);
        writer.writeBoolValue('required', value:required_);
    }
}
