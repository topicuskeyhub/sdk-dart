import 'package:kiota_abstractions/kiota_abstractions.dart';
import './notification.dart';

class InvalidSignaturesDetectedNotification extends Notification implements Parsable {
    /// Instantiates a new [InvalidSignaturesDetectedNotification] and sets the default values.
    InvalidSignaturesDetectedNotification() : super() {
        typeEscaped = 'notification.InvalidSignaturesDetectedNotification';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static InvalidSignaturesDetectedNotification createFromDiscriminatorValue(ParseNode parseNode) {
        return InvalidSignaturesDetectedNotification();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
