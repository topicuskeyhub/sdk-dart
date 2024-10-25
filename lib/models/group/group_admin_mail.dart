import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';

class GroupAdminMail extends NonLinkable implements Parsable {
    ///  The body property
    String? body;
    /// Instantiates a new [GroupAdminMail] and sets the default values.
     GroupAdminMail() : super() {
        typeEscaped = 'group.GroupAdminMail';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static GroupAdminMail createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupAdminMail();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['body'] = (node) => body = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('body', body);
    }
}
