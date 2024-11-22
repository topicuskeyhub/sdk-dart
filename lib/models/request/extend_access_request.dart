// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './modification_request.dart';

/// auto generated
class ExtendAccessRequest extends ModificationRequest implements Parsable {
    ///  The extendUntil property
    DateTime? extendUntil;
    /// Instantiates a new [ExtendAccessRequest] and sets the default values.
    ExtendAccessRequest() : super() {
        type_ = 'request.ExtendAccessRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ExtendAccessRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return ExtendAccessRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['extendUntil'] = (node) => extendUntil = node.getDateTimeValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeDateTimeValue('extendUntil', extendUntil);
    }
}
