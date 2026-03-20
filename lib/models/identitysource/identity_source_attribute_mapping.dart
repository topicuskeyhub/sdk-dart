// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../identity/account_attribute_definition.dart';
import '../non_linkable.dart';

/// auto generated
class IdentitySourceAttributeMapping extends NonLinkable implements Parsable {
    ///  The attribute property
    AccountAttributeDefinition? attribute;
    ///  The fetchSeparately property
    bool? fetchSeparately;
    ///  The index property
    int? index_;
    ///  The multiValued property
    bool? multiValued;
    ///  The selector property
    String? selector;
    /// Instantiates a new [IdentitySourceAttributeMapping] and sets the default values.
    IdentitySourceAttributeMapping() : super() {
        type_ = 'identitysource.IdentitySourceAttributeMapping';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static IdentitySourceAttributeMapping createFromDiscriminatorValue(ParseNode parseNode) {
        return IdentitySourceAttributeMapping();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['attribute'] = (node) => attribute = node.getObjectValue<AccountAttributeDefinition>(AccountAttributeDefinition.createFromDiscriminatorValue);
        deserializerMap['fetchSeparately'] = (node) => fetchSeparately = node.getBoolValue();
        deserializerMap['index'] = (node) => index_ = node.getIntValue();
        deserializerMap['multiValued'] = (node) => multiValued = node.getBoolValue();
        deserializerMap['selector'] = (node) => selector = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountAttributeDefinition>('attribute', attribute);
        writer.writeBoolValue('fetchSeparately', value:fetchSeparately);
        writer.writeIntValue('index', index_);
        writer.writeBoolValue('multiValued', value:multiValued);
        writer.writeStringValue('selector', selector);
    }
}
