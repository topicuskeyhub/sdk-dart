import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../certificate/certificate_primer.dart';
import '../t_l_s_level.dart';
import './abstract_provisioned_l_d_a_p_attributes.dart';
import './l_d_a_p_ssh_public_key_support.dart';
import './provisioned_a_d.dart';
import './provisioned_l_d_a_p.dart';
import './provisioned_system.dart';

class AbstractProvisionedLDAP extends ProvisionedSystem implements Parsable {
    ///  The attributes property
    AbstractProvisionedLDAPAttributes? attributes;
    ///  The baseDN property
    String? baseDN;
    ///  The bindDN property
    String? bindDN;
    ///  The bindPassword property
    String? bindPassword;
    ///  The clientCertificate property
    CertificatePrimer? clientCertificate;
    ///  The failoverHost property
    String? failoverHost;
    ///  The failoverTrustedCertificate property
    CertificatePrimer? failoverTrustedCertificate;
    ///  The groupDN property
    String? groupDN;
    ///  The host property
    String? host;
    ///  The objectClasses property
    String? objectClasses;
    ///  The port property
    int? port;
    ///  The serviceAccountDN property
    String? serviceAccountDN;
    ///  The sshPublicKeySupport property
    LDAPSshPublicKeySupport? sshPublicKeySupport;
    ///  The tls property
    TLSLevel? tls;
    ///  The trustedCertificate property
    CertificatePrimer? trustedCertificate;
    ///  The userDN property
    String? userDN;
    /// Instantiates a new [AbstractProvisionedLDAP] and sets the default values.
    AbstractProvisionedLDAP() : super() {
        typeEscaped = 'provisioning.AbstractProvisionedLDAP';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AbstractProvisionedLDAP createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'provisioning.ProvisionedAD' => ProvisionedAD(),
            'provisioning.ProvisionedLDAP' => ProvisionedLDAP(),
            _ => AbstractProvisionedLDAP(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['attributes'] = (node) => attributes = node.getObjectValue<AbstractProvisionedLDAPAttributes>(AbstractProvisionedLDAPAttributes.createFromDiscriminatorValue);
        deserializerMap['baseDN'] = (node) => baseDN = node.getStringValue();
        deserializerMap['bindDN'] = (node) => bindDN = node.getStringValue();
        deserializerMap['bindPassword'] = (node) => bindPassword = node.getStringValue();
        deserializerMap['clientCertificate'] = (node) => clientCertificate = node.getObjectValue<CertificatePrimer>(CertificatePrimer.createFromDiscriminatorValue);
        deserializerMap['failoverHost'] = (node) => failoverHost = node.getStringValue();
        deserializerMap['failoverTrustedCertificate'] = (node) => failoverTrustedCertificate = node.getObjectValue<CertificatePrimer>(CertificatePrimer.createFromDiscriminatorValue);
        deserializerMap['groupDN'] = (node) => groupDN = node.getStringValue();
        deserializerMap['host'] = (node) => host = node.getStringValue();
        deserializerMap['objectClasses'] = (node) => objectClasses = node.getStringValue();
        deserializerMap['port'] = (node) => port = node.getIntValue();
        deserializerMap['serviceAccountDN'] = (node) => serviceAccountDN = node.getStringValue();
        deserializerMap['sshPublicKeySupport'] = (node) => sshPublicKeySupport = node.getEnumValue<LDAPSshPublicKeySupport>((stringValue) => LDAPSshPublicKeySupport.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['tls'] = (node) => tls = node.getEnumValue<TLSLevel>((stringValue) => TLSLevel.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['trustedCertificate'] = (node) => trustedCertificate = node.getObjectValue<CertificatePrimer>(CertificatePrimer.createFromDiscriminatorValue);
        deserializerMap['userDN'] = (node) => userDN = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AbstractProvisionedLDAPAttributes>('attributes', attributes);
        writer.writeStringValue('baseDN', baseDN);
        writer.writeStringValue('bindDN', bindDN);
        writer.writeStringValue('bindPassword', bindPassword);
        writer.writeObjectValue<CertificatePrimer>('clientCertificate', clientCertificate);
        writer.writeStringValue('failoverHost', failoverHost);
        writer.writeObjectValue<CertificatePrimer>('failoverTrustedCertificate', failoverTrustedCertificate);
        writer.writeStringValue('groupDN', groupDN);
        writer.writeStringValue('host', host);
        writer.writeStringValue('objectClasses', objectClasses);
        writer.writeIntValue('port', port);
        writer.writeStringValue('serviceAccountDN', serviceAccountDN);
        writer.writeEnumValue<LDAPSshPublicKeySupport>('sshPublicKeySupport', sshPublicKeySupport, (e) => e?.value);
        writer.writeEnumValue<TLSLevel>('tls', tls, (e) => e?.value);
        writer.writeObjectValue<CertificatePrimer>('trustedCertificate', trustedCertificate);
        writer.writeStringValue('userDN', userDN);
    }
}
