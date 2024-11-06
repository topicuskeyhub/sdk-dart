import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './account_license_role.dart';

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
        typeEscaped = 'auth.AccountStatus';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AccountStatus createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountStatus();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['accountEnabled'] = (node) => accountEnabled = node.getBoolValue();
        deserializerMap['canRequestGroups'] = (node) => canRequestGroups = node.getBoolValue();
        deserializerMap['declineRecoveryRequests'] = (node) => declineRecoveryRequests = node.getBoolValue();
        deserializerMap['licenseRole'] = (node) => licenseRole = node.getEnumValue<AccountLicenseRole>((stringValue) => AccountLicenseRole.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['reregistrationRequired'] = (node) => reregistrationRequired = node.getBoolValue();
        deserializerMap['twoFactorAuthenticationEnabled'] = (node) => twoFactorAuthenticationEnabled = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
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
