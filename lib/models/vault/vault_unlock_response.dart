import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';

class VaultUnlockResponse extends NonLinkable implements Parsable {
    ///  The expiresAt property
    DateTime? expiresAt;
    ///  The sessionPassword property
    String? sessionPassword;
    /// Instantiates a new [VaultUnlockResponse] and sets the default values.
     VaultUnlockResponse() : super() {
        typeEscaped = 'vault.VaultUnlockResponse';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static VaultUnlockResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return VaultUnlockResponse();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['expiresAt'] = (node) => expiresAt = node.getDateTimeValue();
        deserializerMap['sessionPassword'] = (node) => sessionPassword = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeDateTimeValue('expiresAt', expiresAt);
        writer.writeStringValue('sessionPassword', sessionPassword);
    }
}
