// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../certificate/certificate_primer.dart';
import '../vault/vault_record_primer.dart';
import './client_application.dart';

/// auto generated
class LdapClient extends ClientApplication implements Parsable {
    ///  The bindDn property
    String? bindDn;
    ///  The clientCertificate property
    CertificatePrimer? clientCertificate;
    ///  The sharedSecret property
    VaultRecordPrimer? sharedSecret;
    ///  The shareSecretInVault property
    bool? shareSecretInVault;
    /// Instantiates a new [LdapClient] and sets the default values.
    LdapClient() : super() {
        type_ = 'client.LdapClient';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LdapClient createFromDiscriminatorValue(ParseNode parseNode) {
        return LdapClient();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['bindDn'] = (node) => bindDn = node.getStringValue();
        deserializerMap['clientCertificate'] = (node) => clientCertificate = node.getObjectValue<CertificatePrimer>(CertificatePrimer.createFromDiscriminatorValue);
        deserializerMap['sharedSecret'] = (node) => sharedSecret = node.getObjectValue<VaultRecordPrimer>(VaultRecordPrimer.createFromDiscriminatorValue);
        deserializerMap['shareSecretInVault'] = (node) => shareSecretInVault = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<CertificatePrimer>('clientCertificate', clientCertificate);
        writer.writeObjectValue<VaultRecordPrimer>('sharedSecret', sharedSecret);
        writer.writeBoolValue('shareSecretInVault', value:shareSecretInVault);
    }
}
