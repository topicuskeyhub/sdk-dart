// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import './provisioned_system_sync_log_additional_objects.dart';

/// auto generated
class ProvisionedSystemSyncLog extends Linkable implements Parsable {
    ///  The additionalObjects property
    ProvisionedSystemSyncLogAdditionalObjects? additionalObjects;
    ///  The createdAt property
    DateTime? createdAt;
    ///  The errors property
    int? errors;
    ///  The log property
    String? log;
    ///  The modifications property
    int? modifications;
    /// Instantiates a new [ProvisionedSystemSyncLog] and sets the default values.
    ProvisionedSystemSyncLog() : super() {
        type_ = 'provisioning.ProvisionedSystemSyncLog';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisionedSystemSyncLog createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedSystemSyncLog();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<ProvisionedSystemSyncLogAdditionalObjects>(ProvisionedSystemSyncLogAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['createdAt'] = (node) => createdAt = node.getDateTimeValue();
        deserializerMap['errors'] = (node) => errors = node.getIntValue();
        deserializerMap['log'] = (node) => log = node.getStringValue();
        deserializerMap['modifications'] = (node) => modifications = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<ProvisionedSystemSyncLogAdditionalObjects>('additionalObjects', additionalObjects);
    }
}
