import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';

class VaultRecordSecrets extends NonLinkable implements Parsable {
    ///  The comment property
    String? comment;
    ///  The file property
    String? file;
    ///  The password property
    String? password;
    ///  The totp property
    String? totp;
    ///  The writeTotp property
    bool? writeTotp;
    /// Instantiates a new [VaultRecordSecrets] and sets the default values.
     VaultRecordSecrets() : super() {
        typeEscaped = 'vault.VaultRecordSecrets';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static VaultRecordSecrets createFromDiscriminatorValue(ParseNode parseNode) {
        return VaultRecordSecrets();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['comment'] = (node) => comment = node.getStringValue();
        deserializerMap['file'] = (node) => file = node.getStringValue();
        deserializerMap['password'] = (node) => password = node.getStringValue();
        deserializerMap['totp'] = (node) => totp = node.getStringValue();
        deserializerMap['writeTotp'] = (node) => writeTotp = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('comment', comment);
        writer.writeStringValue('file', file);
        writer.writeStringValue('password', password);
        writer.writeStringValue('totp', totp);
        writer.writeBoolValue('writeTotp', value:writeTotp);
    }
}
