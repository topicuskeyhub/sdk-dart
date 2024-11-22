// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './non_linkable.dart';

/// auto generated
class SegmentCount extends NonLinkable implements Parsable {
    ///  The count property
    int? count;
    ///  The name property
    String? name;
    /// Instantiates a new [SegmentCount] and sets the default values.
    SegmentCount() : super() {
        type_ = 'SegmentCount';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static SegmentCount createFromDiscriminatorValue(ParseNode parseNode) {
        return SegmentCount();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeIntValue('count', count);
        writer.writeStringValue('name', name);
    }
}
