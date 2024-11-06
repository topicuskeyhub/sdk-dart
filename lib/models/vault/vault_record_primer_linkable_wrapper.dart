import 'package:kiota_abstractions/kiota_abstractions.dart';
import './vault_record_primer.dart';

class VaultRecordPrimerLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<VaultRecordPrimer>? items;
    /// Instantiates a new [VaultRecordPrimerLinkableWrapper] and sets the default values.
    VaultRecordPrimerLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static VaultRecordPrimerLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return VaultRecordPrimerLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<VaultRecordPrimer>(VaultRecordPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<VaultRecordPrimer>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
