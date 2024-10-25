import 'package:kiota_abstractions/kiota_abstractions.dart';
import './provision_number_sequence.dart';

class ProvisionNumberSequenceLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<ProvisionNumberSequence>? items;
    /// Instantiates a new [ProvisionNumberSequenceLinkableWrapper] and sets the default values.
     ProvisionNumberSequenceLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static ProvisionNumberSequenceLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionNumberSequenceLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<ProvisionNumberSequence>(ProvisionNumberSequence.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ProvisionNumberSequence>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
