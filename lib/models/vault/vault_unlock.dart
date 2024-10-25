import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';

class VaultUnlock extends NonLinkable implements Parsable {
    ///  The password property
    String? password;
    /// Instantiates a new [VaultUnlock] and sets the default values.
     VaultUnlock() : super() {
        typeEscaped = 'vault.VaultUnlock';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static VaultUnlock createFromDiscriminatorValue(ParseNode parseNode) {
        return VaultUnlock();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['password'] = (node) => password = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('password', password);
    }
}
