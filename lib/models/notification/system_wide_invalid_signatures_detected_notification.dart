// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invalid_signature_owner.dart';
import './notification.dart';

/// auto generated
class SystemWideInvalidSignaturesDetectedNotification extends Notification implements Parsable {
    ///  The owners property
    Iterable<InvalidSignatureOwner>? owners;
    /// Instantiates a new [SystemWideInvalidSignaturesDetectedNotification] and sets the default values.
    SystemWideInvalidSignaturesDetectedNotification() : super() {
        type_ = 'notification.SystemWideInvalidSignaturesDetectedNotification';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static SystemWideInvalidSignaturesDetectedNotification createFromDiscriminatorValue(ParseNode parseNode) {
        return SystemWideInvalidSignaturesDetectedNotification();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['owners'] = (node) => owners = node.getCollectionOfObjectValues<InvalidSignatureOwner>(InvalidSignatureOwner.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<InvalidSignatureOwner>('owners', owners);
    }
}
