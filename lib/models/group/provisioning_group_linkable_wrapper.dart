import 'package:kiota_abstractions/kiota_abstractions.dart';
import './provisioning_group.dart';

class ProvisioningGroupLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<ProvisioningGroup>? items;
    /// Instantiates a new [ProvisioningGroupLinkableWrapper] and sets the default values.
    ProvisioningGroupLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ProvisioningGroupLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisioningGroupLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<ProvisioningGroup>(ProvisioningGroup.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ProvisioningGroup>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
