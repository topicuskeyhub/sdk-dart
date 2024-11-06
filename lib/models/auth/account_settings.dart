import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../directory/account_directory_type.dart';
import '../non_linkable.dart';
import '../organization/organizational_unit_primer.dart';
import '../vault/account_vault_status.dart';
import './password_mode.dart';
import './two_factor_authentication_status.dart';

class AccountSettings extends NonLinkable implements Parsable {
    ///  The defaultOrganizationalUnit property
    OrganizationalUnitPrimer? defaultOrganizationalUnit;
    ///  The directoryName property
    String? directoryName;
    ///  The directoryType property
    AccountDirectoryType? directoryType;
    ///  The inGroups property
    bool? inGroups;
    ///  The inMultipleOrganizationalUnits property
    bool? inMultipleOrganizationalUnits;
    ///  The keyHubAdmin property
    bool? keyHubAdmin;
    ///  The multipleOrganizationalUnitsExist property
    bool? multipleOrganizationalUnitsExist;
    ///  The passwordMode property
    PasswordMode? passwordMode;
    ///  The sshPublicKey property
    String? sshPublicKey;
    ///  The twoFactorAuthentication property
    TwoFactorAuthenticationStatus? twoFactorAuthentication;
    ///  The useTokenPassword property
    bool? useTokenPassword;
    ///  The vaultStatus property
    AccountVaultStatus? vaultStatus;
    /// Instantiates a new [AccountSettings] and sets the default values.
    AccountSettings() : super() {
        typeEscaped = 'auth.AccountSettings';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AccountSettings createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountSettings();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['defaultOrganizationalUnit'] = (node) => defaultOrganizationalUnit = node.getObjectValue<OrganizationalUnitPrimer>(OrganizationalUnitPrimer.createFromDiscriminatorValue);
        deserializerMap['directoryName'] = (node) => directoryName = node.getStringValue();
        deserializerMap['directoryType'] = (node) => directoryType = node.getEnumValue<AccountDirectoryType>((stringValue) => AccountDirectoryType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['inGroups'] = (node) => inGroups = node.getBoolValue();
        deserializerMap['inMultipleOrganizationalUnits'] = (node) => inMultipleOrganizationalUnits = node.getBoolValue();
        deserializerMap['keyHubAdmin'] = (node) => keyHubAdmin = node.getBoolValue();
        deserializerMap['multipleOrganizationalUnitsExist'] = (node) => multipleOrganizationalUnitsExist = node.getBoolValue();
        deserializerMap['passwordMode'] = (node) => passwordMode = node.getEnumValue<PasswordMode>((stringValue) => PasswordMode.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['sshPublicKey'] = (node) => sshPublicKey = node.getStringValue();
        deserializerMap['twoFactorAuthentication'] = (node) => twoFactorAuthentication = node.getEnumValue<TwoFactorAuthenticationStatus>((stringValue) => TwoFactorAuthenticationStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['useTokenPassword'] = (node) => useTokenPassword = node.getBoolValue();
        deserializerMap['vaultStatus'] = (node) => vaultStatus = node.getEnumValue<AccountVaultStatus>((stringValue) => AccountVaultStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<OrganizationalUnitPrimer>('defaultOrganizationalUnit', defaultOrganizationalUnit);
        writer.writeStringValue('directoryName', directoryName);
        writer.writeEnumValue<AccountDirectoryType>('directoryType', directoryType, (e) => e?.value);
        writer.writeBoolValue('inGroups', value:inGroups);
        writer.writeBoolValue('inMultipleOrganizationalUnits', value:inMultipleOrganizationalUnits);
        writer.writeBoolValue('keyHubAdmin', value:keyHubAdmin);
        writer.writeBoolValue('multipleOrganizationalUnitsExist', value:multipleOrganizationalUnitsExist);
        writer.writeEnumValue<PasswordMode>('passwordMode', passwordMode, (e) => e?.value);
        writer.writeStringValue('sshPublicKey', sshPublicKey);
        writer.writeEnumValue<TwoFactorAuthenticationStatus>('twoFactorAuthentication', twoFactorAuthentication, (e) => e?.value);
        writer.writeBoolValue('useTokenPassword', value:useTokenPassword);
        writer.writeEnumValue<AccountVaultStatus>('vaultStatus', vaultStatus, (e) => e?.value);
    }
}
