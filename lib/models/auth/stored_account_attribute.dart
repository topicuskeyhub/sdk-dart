// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';

/// auto generated
class StoredAccountAttribute extends NonLinkable implements Parsable {
    ///  The name property
    String? name;
    ///  The value property
    String? value;
    /// Instantiates a new [StoredAccountAttribute] and sets the default values.
    StoredAccountAttribute() : super() {
        type_ = 'auth.StoredAccountAttribute';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static StoredAccountAttribute createFromDiscriminatorValue(ParseNode parseNode) {
        return StoredAccountAttribute();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['value'] = (node) => value = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('name', name);
        writer.writeStringValue('value', value);
    }
}
