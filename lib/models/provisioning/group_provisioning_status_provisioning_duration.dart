// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class GroupProvisioningStatusProvisioningDuration implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The nanos property
    int? nanos;
    ///  The seconds property
    int? seconds;
    /// Instantiates a new [GroupProvisioningStatusProvisioningDuration] and sets the default values.
    GroupProvisioningStatusProvisioningDuration() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GroupProvisioningStatusProvisioningDuration createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupProvisioningStatusProvisioningDuration();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['nanos'] = (node) => nanos = node.getIntValue();
        deserializerMap['seconds'] = (node) => seconds = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('nanos', nanos);
        writer.writeIntValue('seconds', seconds);
        writer.writeAdditionalData(additionalData);
    }
}
