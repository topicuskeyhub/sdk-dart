import 'package:kiota_abstractions/kiota_abstractions.dart';
import './internal_account.dart';

class InternalAccountLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<InternalAccount>? items;
    /// Instantiates a new [InternalAccountLinkableWrapper] and sets the default values.
    InternalAccountLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static InternalAccountLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return InternalAccountLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<InternalAccount>(InternalAccount.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<InternalAccount>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
