// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './provision_number_sequence.dart';

/// auto generated
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
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisionNumberSequenceLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionNumberSequenceLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<ProvisionNumberSequence>(ProvisionNumberSequence.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ProvisionNumberSequence>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
