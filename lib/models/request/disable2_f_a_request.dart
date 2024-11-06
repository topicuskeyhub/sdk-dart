import 'package:kiota_abstractions/kiota_abstractions.dart';
import './modification_request.dart';

class Disable2FARequest extends ModificationRequest implements Parsable {
    ///  The subject property
    String? subject;
    /// Instantiates a new [Disable2FARequest] and sets the default values.
    Disable2FARequest() : super() {
        typeEscaped = 'request.Disable2FARequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static Disable2FARequest createFromDiscriminatorValue(ParseNode parseNode) {
        return Disable2FARequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['subject'] = (node) => subject = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('subject', subject);
    }
}
