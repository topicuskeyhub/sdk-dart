// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../directory/account_directory_primer.dart';
import './a_d_sam_account_name_scheme.dart';
import './l_d_a_p_password_hashing_scheme.dart';
import './l_d_a_p_ssh_public_key_support.dart';
import './provision_number_sequence.dart';
import './provisioned_system.dart';

/// auto generated
class ProvisionedLDAPDirectory extends ProvisionedSystem implements Parsable {
    ///  The accountsWritable property
    bool? accountsWritable;
    ///  The directory property
    AccountDirectoryPrimer? directory;
    ///  The gid property
    int? gid;
    ///  The gidNumbering property
    ProvisionNumberSequence? gidNumbering;
    ///  The groupDN property
    String? groupDN;
    ///  The hashingScheme property
    LDAPPasswordHashingScheme? hashingScheme;
    ///  The numbering property
    ProvisionNumberSequence? numbering;
    ///  The samAccountNameScheme property
    ADSamAccountNameScheme? samAccountNameScheme;
    ///  The sshPublicKeySupport property
    LDAPSshPublicKeySupport? sshPublicKeySupport;
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
        deserializerMap['accountsWritable'] = (node) => accountsWritable = node.getBoolValue();
        deserializerMap['directory'] = (node) => directory = node.getObjectValue<AccountDirectoryPrimer>(AccountDirectoryPrimer.createFromDiscriminatorValue);
        deserializerMap['gid'] = (node) => gid = node.getIntValue();
        deserializerMap['gidNumbering'] = (node) => gidNumbering = node.getObjectValue<ProvisionNumberSequence>(ProvisionNumberSequence.createFromDiscriminatorValue);
        deserializerMap['groupDN'] = (node) => groupDN = node.getStringValue();
        deserializerMap['hashingScheme'] = (node) => hashingScheme = node.getEnumValue<LDAPPasswordHashingScheme>((stringValue) => LDAPPasswordHashingScheme.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['numbering'] = (node) => numbering = node.getObjectValue<ProvisionNumberSequence>(ProvisionNumberSequence.createFromDiscriminatorValue);
        deserializerMap['samAccountNameScheme'] = (node) => samAccountNameScheme = node.getEnumValue<ADSamAccountNameScheme>((stringValue) => ADSamAccountNameScheme.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['sshPublicKeySupport'] = (node) => sshPublicKeySupport = node.getEnumValue<LDAPSshPublicKeySupport>((stringValue) => LDAPSshPublicKeySupport.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('accountsWritable', value:accountsWritable);
        writer.writeObjectValue<AccountDirectoryPrimer>('directory', directory);
        writer.writeIntValue('gid', gid);
        writer.writeObjectValue<ProvisionNumberSequence>('gidNumbering', gidNumbering);
        writer.writeStringValue('groupDN', groupDN);
        writer.writeEnumValue<LDAPPasswordHashingScheme>('hashingScheme', hashingScheme, (e) => e?.value);
        writer.writeObjectValue<ProvisionNumberSequence>('numbering', numbering);
        writer.writeEnumValue<ADSamAccountNameScheme>('samAccountNameScheme', samAccountNameScheme, (e) => e?.value);
        writer.writeEnumValue<LDAPSshPublicKeySupport>('sshPublicKeySupport', sshPublicKeySupport, (e) => e?.value);
    }
}
