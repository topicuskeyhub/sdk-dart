// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';

/// auto generated
class StringValue extends NonLinkable implements Parsable {
    ///  The value property
    String? value;
    /// Instantiates a new [StringValue] and sets the default values.
    StringValue() : super() {
        type_ = 'simple.StringValue';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static StringValue createFromDiscriminatorValue(ParseNode parseNode) {
        return StringValue();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['value'] = (node) => value = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('value', value);
    }
}
