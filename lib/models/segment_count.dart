import 'package:kiota_abstractions/kiota_abstractions.dart';
import './non_linkable.dart';

class SegmentCount extends NonLinkable implements Parsable {
    ///  The count property
    int? count;
    ///  The name property
    String? name;
    /// Instantiates a new [SegmentCount] and sets the default values.
     SegmentCount() : super() {
        typeEscaped = 'SegmentCount';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static SegmentCount createFromDiscriminatorValue(ParseNode parseNode) {
        return SegmentCount();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeIntValue('count', count);
        writer.writeStringValue('name', name);
    }
}
