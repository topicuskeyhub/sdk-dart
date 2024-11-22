// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import './provision_number_sequence_additional_objects.dart';

/// auto generated
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
        type_ = 'provisioning.ProvisionNumberSequence';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisionNumberSequence createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionNumberSequence();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['accountCount'] = (node) => accountCount = node.getIntValue();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<ProvisionNumberSequenceAdditionalObjects>(ProvisionNumberSequenceAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['nextUID'] = (node) => nextUID = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<ProvisionNumberSequenceAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeStringValue('name', name);
        writer.writeIntValue('nextUID', nextUID);
    }
}
