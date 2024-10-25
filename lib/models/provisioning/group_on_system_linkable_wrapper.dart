import 'package:kiota_abstractions/kiota_abstractions.dart';
import './group_on_system.dart';

class GroupOnSystemLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<GroupOnSystem>? items;
    /// Instantiates a new [GroupOnSystemLinkableWrapper] and sets the default values.
     GroupOnSystemLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static GroupOnSystemLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupOnSystemLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<GroupOnSystem>(GroupOnSystem.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<GroupOnSystem>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
