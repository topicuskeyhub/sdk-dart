import 'package:kiota_abstractions/kiota_abstractions.dart';
import './modification_request.dart';

class ModificationRequestLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<ModificationRequest>? items;
    /// Instantiates a new [ModificationRequestLinkableWrapper] and sets the default values.
    ModificationRequestLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ModificationRequestLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return ModificationRequestLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<ModificationRequest>(ModificationRequest.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ModificationRequest>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
