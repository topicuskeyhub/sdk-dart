import 'package:kiota_abstractions/kiota_abstractions.dart';
import './access_profile.dart';

class AccessProfileLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<AccessProfile>? items;
    /// Instantiates a new [AccessProfileLinkableWrapper] and sets the default values.
     AccessProfileLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static AccessProfileLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return AccessProfileLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<AccessProfile>(AccessProfile.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<AccessProfile>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
