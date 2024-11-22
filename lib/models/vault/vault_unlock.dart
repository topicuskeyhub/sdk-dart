// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';

/// auto generated
class VaultUnlock extends NonLinkable implements Parsable {
    ///  The password property
    String? password;
    /// Instantiates a new [VaultUnlock] and sets the default values.
    VaultUnlock() : super() {
        type_ = 'vault.VaultUnlock';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static VaultUnlock createFromDiscriminatorValue(ParseNode parseNode) {
        return VaultUnlock();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['password'] = (node) => password = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('password', password);
    }
}
