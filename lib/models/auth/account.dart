// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../directory/account_directory_primer.dart';
import '../directory/account_directory_type.dart';
import '../directory/directory_rotating_password.dart';
import '../identity/identity.dart';
import './account_additional_objects.dart';
import './account_license_role.dart';
import './account_primer.dart';
import './internal_account.dart';
import './permission.dart';
import './two_factor_authentication_status.dart';

/// auto generated
class Account extends AccountPrimer implements Parsable {
    ///  The accountPermissions property
    Iterable<Permission>? accountPermissions;
    ///  The active property
    bool? active;
    ///  The additionalObjects property
    AccountAdditionalObjects? additionalObjects;
    ///  The canRequestGroups property
    bool? canRequestGroups;
    ///  The directory property
    AccountDirectoryPrimer? directory;
    ///  The directoryName property
    String? directoryName;
    ///  The directoryPasswordChangeRequired property
    bool? directoryPasswordChangeRequired;
    ///  The directoryRotatingPassword property
    DirectoryRotatingPassword? directoryRotatingPassword;
    ///  The directoryType property
    AccountDirectoryType? directoryType;
    ///  The email property
    String? email;
    ///  The identity property
    Identity? identity;
    ///  The idInDirectory property
    String? idInDirectory;
    ///  The keyHubPasswordChangeRequired property
    bool? keyHubPasswordChangeRequired;
    ///  The lastModifiedAt property
    DateTime? lastModifiedAt;
    ///  The licenseRole property
    AccountLicenseRole? licenseRole;
    ///  The locale property
    String? locale;
    ///  The reregistrationRequired property
    bool? reregistrationRequired;
    ///  The tokenPasswordEnabled property
    bool? tokenPasswordEnabled;
    ///  The twoFactorStatus property
    TwoFactorAuthenticationStatus? twoFactorStatus;
    ///  The validInDirectory property
    bool? validInDirectory;
    /// Instantiates a new [Account] and sets the default values.
    Account() : super() {
        type_ = 'auth.Account';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static Account createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'auth.InternalAccount' => InternalAccount(),
            _ => Account(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['accountPermissions'] = (node) => accountPermissions = node.getCollectionOfObjectValues<Permission>(Permission.createFromDiscriminatorValue);
        deserializerMap['active'] = (node) => active = node.getBoolValue();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<AccountAdditionalObjects>(AccountAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['canRequestGroups'] = (node) => canRequestGroups = node.getBoolValue();
        deserializerMap['directory'] = (node) => directory = node.getObjectValue<AccountDirectoryPrimer>(AccountDirectoryPrimer.createFromDiscriminatorValue);
        deserializerMap['directoryName'] = (node) => directoryName = node.getStringValue();
        deserializerMap['directoryPasswordChangeRequired'] = (node) => directoryPasswordChangeRequired = node.getBoolValue();
        deserializerMap['directoryRotatingPassword'] = (node) => directoryRotatingPassword = node.getEnumValue<DirectoryRotatingPassword>((stringValue) => DirectoryRotatingPassword.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['directoryType'] = (node) => directoryType = node.getEnumValue<AccountDirectoryType>((stringValue) => AccountDirectoryType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['email'] = (node) => email = node.getStringValue();
        deserializerMap['identity'] = (node) => identity = node.getObjectValue<Identity>(Identity.createFromDiscriminatorValue);
        deserializerMap['idInDirectory'] = (node) => idInDirectory = node.getStringValue();
        deserializerMap['keyHubPasswordChangeRequired'] = (node) => keyHubPasswordChangeRequired = node.getBoolValue();
        deserializerMap['lastModifiedAt'] = (node) => lastModifiedAt = node.getDateTimeValue();
        deserializerMap['licenseRole'] = (node) => licenseRole = node.getEnumValue<AccountLicenseRole>((stringValue) => AccountLicenseRole.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['locale'] = (node) => locale = node.getStringValue();
        deserializerMap['reregistrationRequired'] = (node) => reregistrationRequired = node.getBoolValue();
        deserializerMap['tokenPasswordEnabled'] = (node) => tokenPasswordEnabled = node.getBoolValue();
        deserializerMap['twoFactorStatus'] = (node) => twoFactorStatus = node.getEnumValue<TwoFactorAuthenticationStatus>((stringValue) => TwoFactorAuthenticationStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['validInDirectory'] = (node) => validInDirectory = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeObjectValue<AccountDirectoryPrimer>('directory', directory);
        writer.writeEnumValue<DirectoryRotatingPassword>('directoryRotatingPassword', directoryRotatingPassword, (e) => e?.value);
        writer.writeEnumValue<AccountDirectoryType>('directoryType', directoryType, (e) => e?.value);
        writer.writeObjectValue<Identity>('identity', identity);
        writer.writeEnumValue<AccountLicenseRole>('licenseRole', licenseRole, (e) => e?.value);
        writer.writeEnumValue<TwoFactorAuthenticationStatus>('twoFactorStatus', twoFactorStatus, (e) => e?.value);
    }
}
