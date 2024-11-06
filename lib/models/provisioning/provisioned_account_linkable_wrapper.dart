import 'package:kiota_abstractions/kiota_abstractions.dart';
import './provisioned_account.dart';

class ProvisionedAccountLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<ProvisionedAccount>? items;
    /// Instantiates a new [ProvisionedAccountLinkableWrapper] and sets the default values.
    ProvisionedAccountLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ProvisionedAccountLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedAccountLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<ProvisionedAccount>(ProvisionedAccount.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ProvisionedAccount>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
