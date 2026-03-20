// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';

/// auto generated
class EffectiveAccountPermissions extends NonLinkable implements Parsable {
    ///  The declineResetRequestsAllowed property
    bool? declineResetRequestsAllowed;
    ///  The disableAccountAllowed property
    bool? disableAccountAllowed;
    ///  The disableTwoFactorAllowed property
    bool? disableTwoFactorAllowed;
    ///  The enableAccountAllowed property
    bool? enableAccountAllowed;
    ///  The updateCanRequestGroupsAllowed property
    bool? updateCanRequestGroupsAllowed;
    ///  The updateLicenseRoleAllowed property
    bool? updateLicenseRoleAllowed;
    ///  The updateReregistrationAllowed property
    bool? updateReregistrationAllowed;
    ///  The viewFullAuditLog property
    bool? viewFullAuditLog;
    ///  The viewGroupsAndProfiles property
    bool? viewGroupsAndProfiles;
    /// Instantiates a new [EffectiveAccountPermissions] and sets the default values.
    EffectiveAccountPermissions() : super() {
        type_ = 'auth.EffectiveAccountPermissions';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static EffectiveAccountPermissions createFromDiscriminatorValue(ParseNode parseNode) {
        return EffectiveAccountPermissions();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['declineResetRequestsAllowed'] = (node) => declineResetRequestsAllowed = node.getBoolValue();
        deserializerMap['disableAccountAllowed'] = (node) => disableAccountAllowed = node.getBoolValue();
        deserializerMap['disableTwoFactorAllowed'] = (node) => disableTwoFactorAllowed = node.getBoolValue();
        deserializerMap['enableAccountAllowed'] = (node) => enableAccountAllowed = node.getBoolValue();
        deserializerMap['updateCanRequestGroupsAllowed'] = (node) => updateCanRequestGroupsAllowed = node.getBoolValue();
        deserializerMap['updateLicenseRoleAllowed'] = (node) => updateLicenseRoleAllowed = node.getBoolValue();
        deserializerMap['updateReregistrationAllowed'] = (node) => updateReregistrationAllowed = node.getBoolValue();
        deserializerMap['viewFullAuditLog'] = (node) => viewFullAuditLog = node.getBoolValue();
        deserializerMap['viewGroupsAndProfiles'] = (node) => viewGroupsAndProfiles = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('declineResetRequestsAllowed', value:declineResetRequestsAllowed);
        writer.writeBoolValue('disableAccountAllowed', value:disableAccountAllowed);
        writer.writeBoolValue('disableTwoFactorAllowed', value:disableTwoFactorAllowed);
        writer.writeBoolValue('enableAccountAllowed', value:enableAccountAllowed);
        writer.writeBoolValue('updateCanRequestGroupsAllowed', value:updateCanRequestGroupsAllowed);
        writer.writeBoolValue('updateLicenseRoleAllowed', value:updateLicenseRoleAllowed);
        writer.writeBoolValue('updateReregistrationAllowed', value:updateReregistrationAllowed);
        writer.writeBoolValue('viewFullAuditLog', value:viewFullAuditLog);
        writer.writeBoolValue('viewGroupsAndProfiles', value:viewGroupsAndProfiles);
    }
}
