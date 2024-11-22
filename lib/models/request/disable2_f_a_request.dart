// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './modification_request.dart';

/// auto generated
class Disable2FARequest extends ModificationRequest implements Parsable {
    ///  The subject property
    String? subject;
    /// Instantiates a new [Disable2FARequest] and sets the default values.
    Disable2FARequest() : super() {
        type_ = 'request.Disable2FARequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static Disable2FARequest createFromDiscriminatorValue(ParseNode parseNode) {
        return Disable2FARequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['subject'] = (node) => subject = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('subject', subject);
    }
}
