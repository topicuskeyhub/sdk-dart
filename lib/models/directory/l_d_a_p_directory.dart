// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../certificate/certificate_primer.dart';
import '../t_l_s_level.dart';
import './account_directory.dart';
import './l_d_a_p_dialect.dart';
import './l_d_a_p_directory_password_recovery.dart';

/// auto generated
class LDAPDirectory extends AccountDirectory implements Parsable {
    ///  The attributesToStore property
    String? attributesToStore;
    ///  The baseDN property
    String? baseDN;
    ///  The clientCertificate property
    CertificatePrimer? clientCertificate;
    ///  The dialect property
    LDAPDialect? dialect;
    ///  The failoverHost property
    String? failoverHost;
    ///  The failoverTrustedCertificate property
    CertificatePrimer? failoverTrustedCertificate;
    ///  The host property
    String? host;
    ///  The passwordRecovery property
    LDAPDirectoryPasswordRecovery? passwordRecovery;
    ///  The port property
    int? port;
    ///  The searchBindDN property
    String? searchBindDN;
    ///  The searchBindPassword property
    String? searchBindPassword;
    ///  The searchFilter property
    String? searchFilter;
    ///  The tls property
    TLSLevel? tls;
    ///  The trustedCertificate property
    CertificatePrimer? trustedCertificate;
    /// Instantiates a new [LDAPDirectory] and sets the default values.
    LDAPDirectory() : super() {
        type_ = 'directory.LDAPDirectory';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LDAPDirectory createFromDiscriminatorValue(ParseNode parseNode) {
        return LDAPDirectory();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['attributesToStore'] = (node) => attributesToStore = node.getStringValue();
        deserializerMap['baseDN'] = (node) => baseDN = node.getStringValue();
        deserializerMap['clientCertificate'] = (node) => clientCertificate = node.getObjectValue<CertificatePrimer>(CertificatePrimer.createFromDiscriminatorValue);
        deserializerMap['dialect'] = (node) => dialect = node.getEnumValue<LDAPDialect>((stringValue) => LDAPDialect.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['failoverHost'] = (node) => failoverHost = node.getStringValue();
        deserializerMap['failoverTrustedCertificate'] = (node) => failoverTrustedCertificate = node.getObjectValue<CertificatePrimer>(CertificatePrimer.createFromDiscriminatorValue);
        deserializerMap['host'] = (node) => host = node.getStringValue();
        deserializerMap['passwordRecovery'] = (node) => passwordRecovery = node.getEnumValue<LDAPDirectoryPasswordRecovery>((stringValue) => LDAPDirectoryPasswordRecovery.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['port'] = (node) => port = node.getIntValue();
        deserializerMap['searchBindDN'] = (node) => searchBindDN = node.getStringValue();
        deserializerMap['searchBindPassword'] = (node) => searchBindPassword = node.getStringValue();
        deserializerMap['searchFilter'] = (node) => searchFilter = node.getStringValue();
        deserializerMap['tls'] = (node) => tls = node.getEnumValue<TLSLevel>((stringValue) => TLSLevel.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['trustedCertificate'] = (node) => trustedCertificate = node.getObjectValue<CertificatePrimer>(CertificatePrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('attributesToStore', attributesToStore);
        writer.writeStringValue('baseDN', baseDN);
        writer.writeObjectValue<CertificatePrimer>('clientCertificate', clientCertificate);
        writer.writeEnumValue<LDAPDialect>('dialect', dialect, (e) => e?.value);
        writer.writeStringValue('failoverHost', failoverHost);
        writer.writeObjectValue<CertificatePrimer>('failoverTrustedCertificate', failoverTrustedCertificate);
        writer.writeStringValue('host', host);
        writer.writeEnumValue<LDAPDirectoryPasswordRecovery>('passwordRecovery', passwordRecovery, (e) => e?.value);
        writer.writeIntValue('port', port);
        writer.writeStringValue('searchBindDN', searchBindDN);
        writer.writeStringValue('searchBindPassword', searchBindPassword);
        writer.writeStringValue('searchFilter', searchFilter);
        writer.writeEnumValue<TLSLevel>('tls', tls, (e) => e?.value);
        writer.writeObjectValue<CertificatePrimer>('trustedCertificate', trustedCertificate);
    }
}
