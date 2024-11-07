import 'package:kiota_abstractions/kiota_abstractions.dart';
import './group_folder.dart';

class GroupFolderLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<GroupFolder>? items;
    /// Instantiates a new [GroupFolderLinkableWrapper] and sets the default values.
    GroupFolderLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static GroupFolderLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupFolderLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<GroupFolder>(GroupFolder.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<GroupFolder>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
