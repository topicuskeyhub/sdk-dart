// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';

/// auto generated
class VaultRecordSecrets extends NonLinkable implements Parsable {
    ///  The comment property
    String? comment;
    ///  The file property
    String? file;
    ///  The password property
    String? password;
    ///  The totp property
    String? totp;
    ///  The totpKey property
    String? totpKey;
    /// Instantiates a new [VaultRecordSecrets] and sets the default values.
    VaultRecordSecrets() : super() {
        type_ = 'vault.VaultRecordSecrets';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static VaultRecordSecrets createFromDiscriminatorValue(ParseNode parseNode) {
        return VaultRecordSecrets();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['comment'] = (node) => comment = node.getStringValue();
        deserializerMap['file'] = (node) => file = node.getStringValue();
        deserializerMap['password'] = (node) => password = node.getStringValue();
        deserializerMap['totp'] = (node) => totp = node.getStringValue();
        deserializerMap['totpKey'] = (node) => totpKey = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('comment', comment);
        writer.writeStringValue('file', file);
        writer.writeStringValue('password', password);
        writer.writeStringValue('totpKey', totpKey);
    }
}
