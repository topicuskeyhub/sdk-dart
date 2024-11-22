// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';

/// auto generated
class GroupAdminMail extends NonLinkable implements Parsable {
    ///  The body property
    String? body;
    /// Instantiates a new [GroupAdminMail] and sets the default values.
    GroupAdminMail() : super() {
        type_ = 'group.GroupAdminMail';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GroupAdminMail createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupAdminMail();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['body'] = (node) => body = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('body', body);
    }
}
