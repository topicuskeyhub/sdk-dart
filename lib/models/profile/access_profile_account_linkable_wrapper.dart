import 'package:kiota_abstractions/kiota_abstractions.dart';
import './access_profile_account.dart';

class AccessProfileAccountLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<AccessProfileAccount>? items;
    /// Instantiates a new [AccessProfileAccountLinkableWrapper] and sets the default values.
    AccessProfileAccountLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AccessProfileAccountLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return AccessProfileAccountLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<AccessProfileAccount>(AccessProfileAccount.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<AccessProfileAccount>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
