import 'package:kiota_abstractions/kiota_abstractions.dart';
import './provisioned_system_primer.dart';

class ProvisionedSystemPrimerLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<ProvisionedSystemPrimer>? items;
    /// Instantiates a new [ProvisionedSystemPrimerLinkableWrapper] and sets the default values.
     ProvisionedSystemPrimerLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static ProvisionedSystemPrimerLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedSystemPrimerLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<ProvisionedSystemPrimer>(ProvisionedSystemPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ProvisionedSystemPrimer>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
