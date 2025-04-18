// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';

/// auto generated
class VaultActivationStatus extends NonLinkable implements Parsable {
    ///  The activated property
    bool? activated;
    ///  The activationRequired property
    bool? activationRequired;
    /// Instantiates a new [VaultActivationStatus] and sets the default values.
    VaultActivationStatus() : super() {
        type_ = 'vault.VaultActivationStatus';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static VaultActivationStatus createFromDiscriminatorValue(ParseNode parseNode) {
        return VaultActivationStatus();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['activated'] = (node) => activated = node.getBoolValue();
        deserializerMap['activationRequired'] = (node) => activationRequired = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('activated', value:activated);
        writer.writeBoolValue('activationRequired', value:activationRequired);
    }
}
