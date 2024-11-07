import 'package:kiota_abstractions/kiota_abstractions.dart';
import './group_classification.dart';

class GroupClassificationLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<GroupClassification>? items;
    /// Instantiates a new [GroupClassificationLinkableWrapper] and sets the default values.
    GroupClassificationLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static GroupClassificationLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupClassificationLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<GroupClassification>(GroupClassification.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<GroupClassification>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
