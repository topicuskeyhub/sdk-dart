// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './group_mail_recipient.dart';

/// auto generated
class GroupMail extends NonLinkable implements Parsable {
    ///  The body property
    String? body;
    ///  The recipients property
    GroupMailRecipient? recipients;
    ///  The subject property
    String? subject;
    /// Instantiates a new [GroupMail] and sets the default values.
    GroupMail() : super() {
        type_ = 'group.GroupMail';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GroupMail createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupMail();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['body'] = (node) => body = node.getStringValue();
        deserializerMap['recipients'] = (node) => recipients = node.getEnumValue<GroupMailRecipient>((stringValue) => GroupMailRecipient.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['subject'] = (node) => subject = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('body', body);
        writer.writeEnumValue<GroupMailRecipient>('recipients', recipients, (e) => e?.value);
        writer.writeStringValue('subject', subject);
    }
}
