import 'package:kiota_abstractions/kiota_abstractions.dart';
import './vault_record.dart';

class VaultRecordLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<VaultRecord>? items;
    /// Instantiates a new [VaultRecordLinkableWrapper] and sets the default values.
    VaultRecordLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static VaultRecordLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return VaultRecordLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<VaultRecord>(VaultRecord.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<VaultRecord>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
