import 'package:kiota_abstractions/kiota_abstractions.dart';
import './provisioned_system.dart';

class ProvisionedSystemLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<ProvisionedSystem>? items;
    /// Instantiates a new [ProvisionedSystemLinkableWrapper] and sets the default values.
     ProvisionedSystemLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static ProvisionedSystemLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedSystemLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<ProvisionedSystem>(ProvisionedSystem.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ProvisionedSystem>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
