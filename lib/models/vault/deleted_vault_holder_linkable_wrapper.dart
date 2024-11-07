import 'package:kiota_abstractions/kiota_abstractions.dart';
import './deleted_vault_holder.dart';

class DeletedVaultHolderLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<DeletedVaultHolder>? items;
    /// Instantiates a new [DeletedVaultHolderLinkableWrapper] and sets the default values.
    DeletedVaultHolderLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static DeletedVaultHolderLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return DeletedVaultHolderLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<DeletedVaultHolder>(DeletedVaultHolder.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<DeletedVaultHolder>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
