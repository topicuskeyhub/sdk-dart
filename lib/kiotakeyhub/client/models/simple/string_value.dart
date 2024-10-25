import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';

class StringValue extends NonLinkable implements Parsable {
    ///  The value property
    String? value;
    /// Instantiates a new [StringValue] and sets the default values.
     StringValue() : super() {
        typeEscaped = 'simple.StringValue';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static StringValue createFromDiscriminatorValue(ParseNode parseNode) {
        return StringValue();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['value'] = (node) => value = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('value', value);
    }
}
