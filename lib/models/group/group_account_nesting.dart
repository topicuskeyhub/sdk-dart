import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';

class GroupAccountNesting extends NonLinkable implements Parsable {
    ///  The connected property
    bool? connected;
    /// Instantiates a new [GroupAccountNesting] and sets the default values.
    GroupAccountNesting() : super() {
        typeEscaped = 'group.GroupAccountNesting';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static GroupAccountNesting createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupAccountNesting();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['connected'] = (node) => connected = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('connected', value:connected);
    }
}
