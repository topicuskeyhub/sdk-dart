import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../linkable.dart';
import './provision_number_sequence_additional_objects.dart';

class ProvisionNumberSequence extends Linkable implements Parsable {
    ///  The accountCount property
    int? accountCount;
    ///  The additionalObjects property
    ProvisionNumberSequenceAdditionalObjects? additionalObjects;
    ///  The name property
    String? name;
    ///  The nextUID property
    int? nextUID;
    /// Instantiates a new [ProvisionNumberSequence] and sets the default values.
     ProvisionNumberSequence() : super() {
        typeEscaped = 'provisioning.ProvisionNumberSequence';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static ProvisionNumberSequence createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionNumberSequence();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['accountCount'] = (node) => accountCount = node.getIntValue();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<ProvisionNumberSequenceAdditionalObjects>(ProvisionNumberSequenceAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['nextUID'] = (node) => nextUID = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<ProvisionNumberSequenceAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeStringValue('name', name);
        writer.writeIntValue('nextUID', nextUID);
    }
}
