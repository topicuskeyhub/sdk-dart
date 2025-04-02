// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './provisioning_group.dart';

/// auto generated
class ProvisioningGroupLinkableWrapperWithCount implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The count property
    int? count;
    ///  The items property
    Iterable<ProvisioningGroup>? items;
    /// Instantiates a new [ProvisioningGroupLinkableWrapperWithCount] and sets the default values.
    ProvisioningGroupLinkableWrapperWithCount() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisioningGroupLinkableWrapperWithCount createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisioningGroupLinkableWrapperWithCount();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<ProvisioningGroup>(ProvisioningGroup.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ProvisioningGroup>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
