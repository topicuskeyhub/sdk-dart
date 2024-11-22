// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../vault/vault_record.dart';
import './notification.dart';

/// auto generated
class VaultRecordExpiredNotification extends Notification implements Parsable {
    ///  The record property
    VaultRecord? record;
    /// Instantiates a new [VaultRecordExpiredNotification] and sets the default values.
    VaultRecordExpiredNotification() : super() {
        type_ = 'notification.VaultRecordExpiredNotification';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static VaultRecordExpiredNotification createFromDiscriminatorValue(ParseNode parseNode) {
        return VaultRecordExpiredNotification();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['record'] = (node) => record = node.getObjectValue<VaultRecord>(VaultRecord.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<VaultRecord>('record', record);
    }
}
