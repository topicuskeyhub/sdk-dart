import 'package:kiota_abstractions/kiota_abstractions.dart';
import './notification.dart';

class UpdateAvailableNotification extends Notification implements Parsable {
    ///  The releasedAt property
    DateOnly? releasedAt;
    /// Instantiates a new [UpdateAvailableNotification] and sets the default values.
     UpdateAvailableNotification() : super() {
        typeEscaped = 'notification.UpdateAvailableNotification';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static UpdateAvailableNotification createFromDiscriminatorValue(ParseNode parseNode) {
        return UpdateAvailableNotification();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['releasedAt'] = (node) => releasedAt = node.getDateOnlyValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeDateOnlyValue('releasedAt', releasedAt);
    }
}
