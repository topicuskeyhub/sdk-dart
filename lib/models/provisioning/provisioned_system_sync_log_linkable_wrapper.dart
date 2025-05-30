// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './provisioned_system_sync_log.dart';

/// auto generated
class ProvisionedSystemSyncLogLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<ProvisionedSystemSyncLog>? items;
    /// Instantiates a new [ProvisionedSystemSyncLogLinkableWrapper] and sets the default values.
    ProvisionedSystemSyncLogLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisionedSystemSyncLogLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedSystemSyncLogLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<ProvisionedSystemSyncLog>(ProvisionedSystemSyncLog.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ProvisionedSystemSyncLog>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
