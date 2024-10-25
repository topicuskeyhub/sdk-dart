import 'package:kiota_abstractions/kiota_abstractions.dart';
import './account_group.dart';

class AccountGroupLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<AccountGroup>? items;
    /// Instantiates a new [AccountGroupLinkableWrapper] and sets the default values.
     AccountGroupLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static AccountGroupLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountGroupLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<AccountGroup>(AccountGroup.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<AccountGroup>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
