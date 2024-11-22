// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../certificate/certificate.dart';
import '../client/ldap_client.dart';
import '../directory/l_d_a_p_directory.dart';
import '../provisioning/provisioned_system.dart';
import '../webhook/webhook.dart';
import './certificate_usage.dart';
import './notification.dart';

/// auto generated
class CertificateExpiredNotification extends Notification implements Parsable {
    ///  The certificate property
    Certificate? certificate;
    ///  The directory property
    LDAPDirectory? directory;
    ///  The expiration property
    DateTime? expiration;
    ///  The ldapClient property
    LdapClient? ldapClient;
    ///  The system property
    ProvisionedSystem? system;
    ///  The usage property
    CertificateUsage? usage;
    ///  The webhook property
    Webhook? webhook;
    /// Instantiates a new [CertificateExpiredNotification] and sets the default values.
    CertificateExpiredNotification() : super() {
        type_ = 'notification.CertificateExpiredNotification';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static CertificateExpiredNotification createFromDiscriminatorValue(ParseNode parseNode) {
        return CertificateExpiredNotification();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['certificate'] = (node) => certificate = node.getObjectValue<Certificate>(Certificate.createFromDiscriminatorValue);
        deserializerMap['directory'] = (node) => directory = node.getObjectValue<LDAPDirectory>(LDAPDirectory.createFromDiscriminatorValue);
        deserializerMap['expiration'] = (node) => expiration = node.getDateTimeValue();
        deserializerMap['ldapClient'] = (node) => ldapClient = node.getObjectValue<LdapClient>(LdapClient.createFromDiscriminatorValue);
        deserializerMap['system'] = (node) => system = node.getObjectValue<ProvisionedSystem>(ProvisionedSystem.createFromDiscriminatorValue);
        deserializerMap['usage'] = (node) => usage = node.getEnumValue<CertificateUsage>((stringValue) => CertificateUsage.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['webhook'] = (node) => webhook = node.getObjectValue<Webhook>(Webhook.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<Certificate>('certificate', certificate);
        writer.writeObjectValue<LDAPDirectory>('directory', directory);
        writer.writeDateTimeValue('expiration', expiration);
        writer.writeObjectValue<LdapClient>('ldapClient', ldapClient);
        writer.writeObjectValue<ProvisionedSystem>('system', system);
        writer.writeEnumValue<CertificateUsage>('usage', usage, (e) => e?.value);
        writer.writeObjectValue<Webhook>('webhook', webhook);
    }
}
