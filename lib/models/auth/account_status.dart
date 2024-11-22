// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './account_license_role.dart';

/// auto generated
class AccountStatus extends NonLinkable implements Parsable {
    ///  The accountEnabled property
    bool? accountEnabled;
    ///  The canRequestGroups property
    bool? canRequestGroups;
    ///  The declineRecoveryRequests property
    bool? declineRecoveryRequests;
    ///  The licenseRole property
    AccountLicenseRole? licenseRole;
    ///  The reregistrationRequired property
    bool? reregistrationRequired;
    ///  The twoFactorAuthenticationEnabled property
    bool? twoFactorAuthenticationEnabled;
    /// Instantiates a new [AccountStatus] and sets the default values.
    AccountStatus() : super() {
        type_ = 'auth.AccountStatus';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccountStatus createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountStatus();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['accountEnabled'] = (node) => accountEnabled = node.getBoolValue();
        deserializerMap['canRequestGroups'] = (node) => canRequestGroups = node.getBoolValue();
        deserializerMap['declineRecoveryRequests'] = (node) => declineRecoveryRequests = node.getBoolValue();
        deserializerMap['licenseRole'] = (node) => licenseRole = node.getEnumValue<AccountLicenseRole>((stringValue) => AccountLicenseRole.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['reregistrationRequired'] = (node) => reregistrationRequired = node.getBoolValue();
        deserializerMap['twoFactorAuthenticationEnabled'] = (node) => twoFactorAuthenticationEnabled = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('accountEnabled', value:accountEnabled);
        writer.writeBoolValue('canRequestGroups', value:canRequestGroups);
        writer.writeBoolValue('declineRecoveryRequests', value:declineRecoveryRequests);
        writer.writeEnumValue<AccountLicenseRole>('licenseRole', licenseRole, (e) => e?.value);
        writer.writeBoolValue('reregistrationRequired', value:reregistrationRequired);
        writer.writeBoolValue('twoFactorAuthenticationEnabled', value:twoFactorAuthenticationEnabled);
    }
}
