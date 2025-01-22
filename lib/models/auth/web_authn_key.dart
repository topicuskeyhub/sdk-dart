// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import './web_authn_p_r_f_supported.dart';

/// auto generated
class WebAuthnKey extends Linkable implements Parsable {
    ///  The displayName property
    String? displayName;
    ///  The keyId property
    String? keyId;
    ///  The prfSupport property
    WebAuthnPRFSupported? prfSupport;
    ///  The publicKey property
    String? publicKey;
    /// Instantiates a new [WebAuthnKey] and sets the default values.
    WebAuthnKey() : super() {
        type_ = 'auth.WebAuthnKey';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static WebAuthnKey createFromDiscriminatorValue(ParseNode parseNode) {
        return WebAuthnKey();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['displayName'] = (node) => displayName = node.getStringValue();
        deserializerMap['keyId'] = (node) => keyId = node.getStringValue();
        deserializerMap['prfSupport'] = (node) => prfSupport = node.getEnumValue<WebAuthnPRFSupported>((stringValue) => WebAuthnPRFSupported.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['publicKey'] = (node) => publicKey = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('displayName', displayName);
        writer.writeEnumValue<WebAuthnPRFSupported>('prfSupport', prfSupport, (e) => e?.value);
    }
}
