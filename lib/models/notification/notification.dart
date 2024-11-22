// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './certificate_expired_notification.dart';
import './group_audit_required_notification.dart';
import './group_edit_required_notification.dart';
import './invalid_signatures_detected_notification.dart';
import './license_status_notification.dart';
import './modification_request_notification.dart';
import './old_api_version_usage_notification.dart';
import './provision_config_required_notification.dart';
import './rotating_password_required_notification.dart';
import './update_available_notification.dart';
import './vault_record_expired_notification.dart';

/// auto generated
class Notification extends NonLinkable implements Parsable {
    /// Instantiates a new [Notification] and sets the default values.
    Notification() : super() {
        type_ = 'notification.Notification';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static Notification createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'notification.CertificateExpiredNotification' => CertificateExpiredNotification(),
            'notification.GroupAuditRequiredNotification' => GroupAuditRequiredNotification(),
            'notification.GroupEditRequiredNotification' => GroupEditRequiredNotification(),
            'notification.InvalidSignaturesDetectedNotification' => InvalidSignaturesDetectedNotification(),
            'notification.LicenseStatusNotification' => LicenseStatusNotification(),
            'notification.ModificationRequestNotification' => ModificationRequestNotification(),
            'notification.OldApiVersionUsageNotification' => OldApiVersionUsageNotification(),
            'notification.ProvisionConfigRequiredNotification' => ProvisionConfigRequiredNotification(),
            'notification.RotatingPasswordRequiredNotification' => RotatingPasswordRequiredNotification(),
            'notification.UpdateAvailableNotification' => UpdateAvailableNotification(),
            'notification.VaultRecordExpiredNotification' => VaultRecordExpiredNotification(),
            _ => Notification(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
