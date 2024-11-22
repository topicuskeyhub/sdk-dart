// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';

/// auto generated
class GroupAccountNesting extends NonLinkable implements Parsable {
    ///  The connected property
    bool? connected;
    /// Instantiates a new [GroupAccountNesting] and sets the default values.
    GroupAccountNesting() : super() {
        type_ = 'group.GroupAccountNesting';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GroupAccountNesting createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupAccountNesting();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['connected'] = (node) => connected = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('connected', value:connected);
    }
}
