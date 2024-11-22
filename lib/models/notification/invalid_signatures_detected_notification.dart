// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './notification.dart';

/// auto generated
class InvalidSignaturesDetectedNotification extends Notification implements Parsable {
    /// Instantiates a new [InvalidSignaturesDetectedNotification] and sets the default values.
    InvalidSignaturesDetectedNotification() : super() {
        type_ = 'notification.InvalidSignaturesDetectedNotification';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static InvalidSignaturesDetectedNotification createFromDiscriminatorValue(ParseNode parseNode) {
        return InvalidSignaturesDetectedNotification();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
