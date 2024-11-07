import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';

class VaultActivationStatus extends NonLinkable implements Parsable {
    ///  The activated property
    bool? activated;
    ///  The activationRequired property
    bool? activationRequired;
    /// Instantiates a new [VaultActivationStatus] and sets the default values.
    VaultActivationStatus() : super() {
        typeEscaped = 'vault.VaultActivationStatus';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static VaultActivationStatus createFromDiscriminatorValue(ParseNode parseNode) {
        return VaultActivationStatus();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['activated'] = (node) => activated = node.getBoolValue();
        deserializerMap['activationRequired'] = (node) => activationRequired = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('activated', value:activated);
        writer.writeBoolValue('activationRequired', value:activationRequired);
    }
}
