import 'package:kiota_abstractions/kiota_abstractions.dart';
import './modification_request.dart';

class ExtendAccessRequest extends ModificationRequest implements Parsable {
    ///  The extendUntil property
    DateTime? extendUntil;
    /// Instantiates a new [ExtendAccessRequest] and sets the default values.
     ExtendAccessRequest() : super() {
        typeEscaped = 'request.ExtendAccessRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static ExtendAccessRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return ExtendAccessRequest();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['extendUntil'] = (node) => extendUntil = node.getDateTimeValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeDateTimeValue('extendUntil', extendUntil);
    }
}
