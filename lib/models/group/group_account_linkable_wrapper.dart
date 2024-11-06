import 'package:kiota_abstractions/kiota_abstractions.dart';
import './group_account.dart';

class GroupAccountLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<GroupAccount>? items;
    /// Instantiates a new [GroupAccountLinkableWrapper] and sets the default values.
    GroupAccountLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static GroupAccountLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupAccountLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<GroupAccount>(GroupAccount.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<GroupAccount>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
