import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';

class StoredAccountAttribute extends NonLinkable implements Parsable {
    ///  The name property
    String? name;
    ///  The value property
    String? value;
    /// Instantiates a new [StoredAccountAttribute] and sets the default values.
    StoredAccountAttribute() : super() {
        typeEscaped = 'auth.StoredAccountAttribute';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static StoredAccountAttribute createFromDiscriminatorValue(ParseNode parseNode) {
        return StoredAccountAttribute();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['value'] = (node) => value = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('name', name);
        writer.writeStringValue('value', value);
    }
}
