import 'package:kiota_abstractions/kiota_abstractions.dart';
import './access_profile_account_with_attributes.dart';

class AccessProfileAccountWithAttributesLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<AccessProfileAccountWithAttributes>? items;
    /// Instantiates a new [AccessProfileAccountWithAttributesLinkableWrapper] and sets the default values.
    AccessProfileAccountWithAttributesLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AccessProfileAccountWithAttributesLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return AccessProfileAccountWithAttributesLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<AccessProfileAccountWithAttributes>(AccessProfileAccountWithAttributes.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<AccessProfileAccountWithAttributes>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
