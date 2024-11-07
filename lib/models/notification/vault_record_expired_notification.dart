import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../vault/vault_record.dart';
import './notification.dart';

class VaultRecordExpiredNotification extends Notification implements Parsable {
    ///  The record property
    VaultRecord? record;
    /// Instantiates a new [VaultRecordExpiredNotification] and sets the default values.
    VaultRecordExpiredNotification() : super() {
        typeEscaped = 'notification.VaultRecordExpiredNotification';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static VaultRecordExpiredNotification createFromDiscriminatorValue(ParseNode parseNode) {
        return VaultRecordExpiredNotification();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['record'] = (node) => record = node.getObjectValue<VaultRecord>(VaultRecord.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<VaultRecord>('record', record);
    }
}
