import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../certificate/certificate_primer.dart';
import '../vault/vault_record_primer.dart';
import './client_application.dart';

class LdapClient extends ClientApplication implements Parsable {
    ///  The bindDn property
    String? bindDn;
    ///  The clientCertificate property
    CertificatePrimer? clientCertificate;
    ///  The sharedSecret property
    VaultRecordPrimer? sharedSecret;
    ///  The shareSecretInVault property
    bool? shareSecretInVault;
    ///  The usedForProvisioning property
    bool? usedForProvisioning;
    /// Instantiates a new [LdapClient] and sets the default values.
     LdapClient() : super() {
        typeEscaped = 'client.LdapClient';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static LdapClient createFromDiscriminatorValue(ParseNode parseNode) {
        return LdapClient();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['bindDn'] = (node) => bindDn = node.getStringValue();
        deserializerMap['clientCertificate'] = (node) => clientCertificate = node.getObjectValue<CertificatePrimer>(CertificatePrimer.createFromDiscriminatorValue);
        deserializerMap['sharedSecret'] = (node) => sharedSecret = node.getObjectValue<VaultRecordPrimer>(VaultRecordPrimer.createFromDiscriminatorValue);
        deserializerMap['shareSecretInVault'] = (node) => shareSecretInVault = node.getBoolValue();
        deserializerMap['usedForProvisioning'] = (node) => usedForProvisioning = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<CertificatePrimer>('clientCertificate', clientCertificate);
        writer.writeObjectValue<VaultRecordPrimer>('sharedSecret', sharedSecret);
        writer.writeBoolValue('shareSecretInVault', value:shareSecretInVault);
    }
}
