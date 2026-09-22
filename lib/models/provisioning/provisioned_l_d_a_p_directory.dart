// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../certificate/certificate_primer.dart';
import '../directory/account_directory_primer.dart';
import '../directory/l_d_a_p_dialect.dart';
import '../identity/account_attribute_definition.dart';
import '../misc/attribute_customization.dart';
import '../t_l_s_level.dart';
import './a_d_sam_account_name_scheme.dart';
import './l_d_a_p_password_hashing_scheme.dart';
import './l_d_a_p_ssh_public_key_support.dart';
import './provision_number_sequence.dart';
import './provisioned_system.dart';

/// auto generated
class ProvisionedLDAPDirectory extends ProvisionedSystem implements Parsable {
    ///  The accountMatchingAttribute property
    AccountAttributeDefinition? accountMatchingAttribute;
    ///  The accountMatchingAttributeName property
    String? accountMatchingAttributeName;
    ///  The accountsWritable property
    bool? accountsWritable;
    ///  The attributes property
    Iterable<AttributeCustomization>? attributes;
    ///  The baseDN property
    String? baseDN;
    ///  The bindDN property
    String? bindDN;
    ///  The bindPassword property
    String? bindPassword;
    ///  The clientCertificate property
    CertificatePrimer? clientCertificate;
    ///  The dialect property
    LDAPDialect? dialect;
    ///  The directory property
    AccountDirectoryPrimer? directory;
    ///  The failoverHost property
    String? failoverHost;
    ///  The failoverTrustedCertificate property
    CertificatePrimer? failoverTrustedCertificate;
    ///  The gid property
    int? gid;
    ///  The gidNumbering property
    ProvisionNumberSequence? gidNumbering;
    ///  The groupDN property
    String? groupDN;
    ///  The hashingScheme property
    LDAPPasswordHashingScheme? hashingScheme;
    ///  The host property
    String? host;
    ///  The numbering property
    ProvisionNumberSequence? numbering;
    ///  The objectClasses property
    String? objectClasses;
    ///  The oidcDirectory property
    AccountDirectoryPrimer? oidcDirectory;
    ///  The port property
    int? port;
    ///  The samAccountNameScheme property
    ADSamAccountNameScheme? samAccountNameScheme;
    ///  The sshPublicKeySupport property
    LDAPSshPublicKeySupport? sshPublicKeySupport;
    ///  The tls property
    TLSLevel? tls;
    ///  The trustedCertificate property
    CertificatePrimer? trustedCertificate;
    /// Instantiates a new [ProvisionedLDAPDirectory] and sets the default values.
    ProvisionedLDAPDirectory() : super() {
        type_ = 'provisioning.ProvisionedLDAPDirectory';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisionedLDAPDirectory createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedLDAPDirectory();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['accountMatchingAttribute'] = (node) => accountMatchingAttribute = node.getObjectValue<AccountAttributeDefinition>(AccountAttributeDefinition.createFromDiscriminatorValue);
        deserializerMap['accountMatchingAttributeName'] = (node) => accountMatchingAttributeName = node.getStringValue();
        deserializerMap['accountsWritable'] = (node) => accountsWritable = node.getBoolValue();
        deserializerMap['attributes'] = (node) => attributes = node.getCollectionOfObjectValues<AttributeCustomization>(AttributeCustomization.createFromDiscriminatorValue);
        deserializerMap['baseDN'] = (node) => baseDN = node.getStringValue();
        deserializerMap['bindDN'] = (node) => bindDN = node.getStringValue();
        deserializerMap['bindPassword'] = (node) => bindPassword = node.getStringValue();
        deserializerMap['clientCertificate'] = (node) => clientCertificate = node.getObjectValue<CertificatePrimer>(CertificatePrimer.createFromDiscriminatorValue);
        deserializerMap['dialect'] = (node) => dialect = node.getEnumValue<LDAPDialect>((stringValue) => LDAPDialect.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['directory'] = (node) => directory = node.getObjectValue<AccountDirectoryPrimer>(AccountDirectoryPrimer.createFromDiscriminatorValue);
        deserializerMap['failoverHost'] = (node) => failoverHost = node.getStringValue();
        deserializerMap['failoverTrustedCertificate'] = (node) => failoverTrustedCertificate = node.getObjectValue<CertificatePrimer>(CertificatePrimer.createFromDiscriminatorValue);
        deserializerMap['gid'] = (node) => gid = node.getIntValue();
        deserializerMap['gidNumbering'] = (node) => gidNumbering = node.getObjectValue<ProvisionNumberSequence>(ProvisionNumberSequence.createFromDiscriminatorValue);
        deserializerMap['groupDN'] = (node) => groupDN = node.getStringValue();
        deserializerMap['hashingScheme'] = (node) => hashingScheme = node.getEnumValue<LDAPPasswordHashingScheme>((stringValue) => LDAPPasswordHashingScheme.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['host'] = (node) => host = node.getStringValue();
        deserializerMap['numbering'] = (node) => numbering = node.getObjectValue<ProvisionNumberSequence>(ProvisionNumberSequence.createFromDiscriminatorValue);
        deserializerMap['objectClasses'] = (node) => objectClasses = node.getStringValue();
        deserializerMap['oidcDirectory'] = (node) => oidcDirectory = node.getObjectValue<AccountDirectoryPrimer>(AccountDirectoryPrimer.createFromDiscriminatorValue);
        deserializerMap['port'] = (node) => port = node.getIntValue();
        deserializerMap['samAccountNameScheme'] = (node) => samAccountNameScheme = node.getEnumValue<ADSamAccountNameScheme>((stringValue) => ADSamAccountNameScheme.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['sshPublicKeySupport'] = (node) => sshPublicKeySupport = node.getEnumValue<LDAPSshPublicKeySupport>((stringValue) => LDAPSshPublicKeySupport.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['tls'] = (node) => tls = node.getEnumValue<TLSLevel>((stringValue) => TLSLevel.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['trustedCertificate'] = (node) => trustedCertificate = node.getObjectValue<CertificatePrimer>(CertificatePrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountAttributeDefinition>('accountMatchingAttribute', accountMatchingAttribute);
        writer.writeStringValue('accountMatchingAttributeName', accountMatchingAttributeName);
        writer.writeBoolValue('accountsWritable', value:accountsWritable);
        writer.writeCollectionOfObjectValues<AttributeCustomization>('attributes', attributes);
        writer.writeStringValue('baseDN', baseDN);
        writer.writeStringValue('bindDN', bindDN);
        writer.writeStringValue('bindPassword', bindPassword);
        writer.writeObjectValue<CertificatePrimer>('clientCertificate', clientCertificate);
        writer.writeEnumValue<LDAPDialect>('dialect', dialect, (e) => e?.value);
        writer.writeObjectValue<AccountDirectoryPrimer>('directory', directory);
        writer.writeStringValue('failoverHost', failoverHost);
        writer.writeObjectValue<CertificatePrimer>('failoverTrustedCertificate', failoverTrustedCertificate);
        writer.writeIntValue('gid', gid);
        writer.writeObjectValue<ProvisionNumberSequence>('gidNumbering', gidNumbering);
        writer.writeStringValue('groupDN', groupDN);
        writer.writeEnumValue<LDAPPasswordHashingScheme>('hashingScheme', hashingScheme, (e) => e?.value);
        writer.writeStringValue('host', host);
        writer.writeObjectValue<ProvisionNumberSequence>('numbering', numbering);
        writer.writeStringValue('objectClasses', objectClasses);
        writer.writeObjectValue<AccountDirectoryPrimer>('oidcDirectory', oidcDirectory);
        writer.writeIntValue('port', port);
        writer.writeEnumValue<ADSamAccountNameScheme>('samAccountNameScheme', samAccountNameScheme, (e) => e?.value);
        writer.writeEnumValue<LDAPSshPublicKeySupport>('sshPublicKeySupport', sshPublicKeySupport, (e) => e?.value);
        writer.writeEnumValue<TLSLevel>('tls', tls, (e) => e?.value);
        writer.writeObjectValue<CertificatePrimer>('trustedCertificate', trustedCertificate);
    }
}
