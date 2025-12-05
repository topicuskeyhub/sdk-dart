// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './audit_info.dart';
import './auth/account_bulk_update.dart';
import './auth/account_change_locale.dart';
import './auth/account_recovery_status.dart';
import './auth/account_settings.dart';
import './auth/account_status.dart';
import './auth/accounts_audit_stats.dart';
import './auth/internal_account_status_object.dart';
import './auth/move_internal_account.dart';
import './auth/stored_account_attribute.dart';
import './auth/stored_account_attributes.dart';
import './directory/account_directory_status_report.dart';
import './generate_secret.dart';
import './group/group_access_info.dart';
import './group/group_account_nesting.dart';
import './group/group_account_status.dart';
import './group/group_admin_mail.dart';
import './group/group_auditing_info.dart';
import './group/group_classification_info.dart';
import './group/group_classification_update.dart';
import './group/group_global_role_info.dart';
import './group/group_info.dart';
import './group/groups_audit_stats.dart';
import './identity/account_attribute_value_selection.dart';
import './identity/account_attribute_value_summary.dart';
import './identity/account_attribute_value_update.dart';
import './launchpad/displayed_launchpad_tiles.dart';
import './license/key_hub_license_info.dart';
import './mark/item_marker.dart';
import './mark/item_markers.dart';
import './misc/attribute_customization.dart';
import './notification/certificate_expired_notification.dart';
import './notification/group_audit_required_notification.dart';
import './notification/group_edit_required_notification.dart';
import './notification/invalid_signatures_detected_notification.dart';
import './notification/license_status_notification.dart';
import './notification/modification_request_notification.dart';
import './notification/notification.dart';
import './notification/notifications.dart';
import './notification/old_api_version_usage_notification.dart';
import './notification/provision_config_required_notification.dart';
import './notification/rotating_password_required_notification.dart';
import './notification/update_available_notification.dart';
import './notification/vault_record_expired_notification.dart';
import './organization/organizational_unit_settings.dart';
import './provisioning/account_provisioning_status.dart';
import './provisioning/account_provisioning_status_report.dart';
import './provisioning/circuit_breaker_statistics.dart';
import './provisioning/group_on_system_types.dart';
import './provisioning/group_provisioning_status.dart';
import './provisioning/provisioning_management_permissions.dart';
import './provisioning/provisioning_status.dart';
import './provisioning/token_password.dart';
import './request/accept_create_group_on_system_request_parameters.dart';
import './request/accept_create_group_request_parameters.dart';
import './request/accept_create_provisioned_namespace_request_parameters.dart';
import './request/accept_create_service_account_request_parameters.dart';
import './request/accept_grant_access_request_parameters.dart';
import './request/accept_join_group_request_parameters.dart';
import './request/accept_modification_request_parameters.dart';
import './request/modification_request_report.dart';
import './request/modification_request_report_change_description.dart';
import './request/modification_request_report_change_details.dart';
import './request/modification_request_report_object_change_details.dart';
import './request/password_reset_request_status.dart';
import './secret.dart';
import './segment_count.dart';
import './serviceaccount/service_account_status.dart';
import './serviceaccount/service_account_supported_features.dart';
import './serviceaccount/service_accounts_audit_stats.dart';
import './simple/string_value.dart';
import './simple/version_info.dart';
import './vault/deleted_vault_recovery.dart';
import './vault/move_vault_record.dart';
import './vault/password_metadata.dart';
import './vault/vault_activation_status.dart';
import './vault/vault_record_secrets.dart';
import './vault/vault_record_share.dart';
import './vault/vault_record_share_summary.dart';
import './vault/vault_recovery.dart';
import './vault/vault_unlock.dart';
import './vault/vault_unlock_response.dart';
import './webhook/webhook_name_uuid.dart';
import './webhook/webhook_push.dart';

/// auto generated
class NonLinkable implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The Type property
    String? type_;
    /// Instantiates a new [NonLinkable] and sets the default values.
    NonLinkable() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static NonLinkable createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'AuditInfo' => AuditInfo(),
            'auth.AccountBulkUpdate' => AccountBulkUpdate(),
            'auth.AccountChangeLocale' => AccountChangeLocale(),
            'auth.AccountRecoveryStatus' => AccountRecoveryStatus(),
            'auth.AccountsAuditStats' => AccountsAuditStats(),
            'auth.AccountSettings' => AccountSettings(),
            'auth.AccountStatus' => AccountStatus(),
            'auth.InternalAccountStatusObject' => InternalAccountStatusObject(),
            'auth.MoveInternalAccount' => MoveInternalAccount(),
            'auth.StoredAccountAttribute' => StoredAccountAttribute(),
            'auth.StoredAccountAttributes' => StoredAccountAttributes(),
            'directory.AccountDirectoryStatusReport' => AccountDirectoryStatusReport(),
            'GenerateSecret' => GenerateSecret(),
            'group.GroupAccessInfo' => GroupAccessInfo(),
            'group.GroupAccountNesting' => GroupAccountNesting(),
            'group.GroupAccountStatus' => GroupAccountStatus(),
            'group.GroupAdminMail' => GroupAdminMail(),
            'group.GroupAuditingInfo' => GroupAuditingInfo(),
            'group.GroupClassificationInfo' => GroupClassificationInfo(),
            'group.GroupClassificationUpdate' => GroupClassificationUpdate(),
            'group.GroupGlobalRoleInfo' => GroupGlobalRoleInfo(),
            'group.GroupInfo' => GroupInfo(),
            'group.GroupsAuditStats' => GroupsAuditStats(),
            'identity.AccountAttributeValueSelection' => AccountAttributeValueSelection(),
            'identity.AccountAttributeValueSummary' => AccountAttributeValueSummary(),
            'identity.AccountAttributeValueUpdate' => AccountAttributeValueUpdate(),
            'launchpad.DisplayedLaunchpadTiles' => DisplayedLaunchpadTiles(),
            'license.KeyHubLicenseInfo' => KeyHubLicenseInfo(),
            'mark.ItemMarker' => ItemMarker(),
            'mark.ItemMarkers' => ItemMarkers(),
            'misc.AttributeCustomization' => AttributeCustomization(),
            'notification.CertificateExpiredNotification' => CertificateExpiredNotification(),
            'notification.GroupAuditRequiredNotification' => GroupAuditRequiredNotification(),
            'notification.GroupEditRequiredNotification' => GroupEditRequiredNotification(),
            'notification.InvalidSignaturesDetectedNotification' => InvalidSignaturesDetectedNotification(),
            'notification.LicenseStatusNotification' => LicenseStatusNotification(),
            'notification.ModificationRequestNotification' => ModificationRequestNotification(),
            'notification.Notification' => Notification(),
            'notification.Notifications' => Notifications(),
            'notification.OldApiVersionUsageNotification' => OldApiVersionUsageNotification(),
            'notification.ProvisionConfigRequiredNotification' => ProvisionConfigRequiredNotification(),
            'notification.RotatingPasswordRequiredNotification' => RotatingPasswordRequiredNotification(),
            'notification.UpdateAvailableNotification' => UpdateAvailableNotification(),
            'notification.VaultRecordExpiredNotification' => VaultRecordExpiredNotification(),
            'organization.OrganizationalUnitSettings' => OrganizationalUnitSettings(),
            'provisioning.AccountProvisioningStatus' => AccountProvisioningStatus(),
            'provisioning.AccountProvisioningStatusReport' => AccountProvisioningStatusReport(),
            'provisioning.CircuitBreakerStatistics' => CircuitBreakerStatistics(),
            'provisioning.GroupOnSystemTypes' => GroupOnSystemTypes(),
            'provisioning.GroupProvisioningStatus' => GroupProvisioningStatus(),
            'provisioning.ProvisioningManagementPermissions' => ProvisioningManagementPermissions(),
            'provisioning.ProvisioningStatus' => ProvisioningStatus(),
            'provisioning.TokenPassword' => TokenPassword(),
            'request.AcceptCreateGroupOnSystemRequestParameters' => AcceptCreateGroupOnSystemRequestParameters(),
            'request.AcceptCreateGroupRequestParameters' => AcceptCreateGroupRequestParameters(),
            'request.AcceptCreateProvisionedNamespaceRequestParameters' => AcceptCreateProvisionedNamespaceRequestParameters(),
            'request.AcceptCreateServiceAccountRequestParameters' => AcceptCreateServiceAccountRequestParameters(),
            'request.AcceptGrantAccessRequestParameters' => AcceptGrantAccessRequestParameters(),
            'request.AcceptJoinGroupRequestParameters' => AcceptJoinGroupRequestParameters(),
            'request.AcceptModificationRequestParameters' => AcceptModificationRequestParameters(),
            'request.ModificationRequestReport' => ModificationRequestReport(),
            'request.ModificationRequestReportChangeDescription' => ModificationRequestReportChangeDescription(),
            'request.ModificationRequestReportChangeDetails' => ModificationRequestReportChangeDetails(),
            'request.ModificationRequestReportObjectChangeDetails' => ModificationRequestReportObjectChangeDetails(),
            'request.PasswordResetRequestStatus' => PasswordResetRequestStatus(),
            'Secret' => Secret(),
            'SegmentCount' => SegmentCount(),
            'serviceaccount.ServiceAccountsAuditStats' => ServiceAccountsAuditStats(),
            'serviceaccount.ServiceAccountStatus' => ServiceAccountStatus(),
            'serviceaccount.ServiceAccountSupportedFeatures' => ServiceAccountSupportedFeatures(),
            'simple.StringValue' => StringValue(),
            'simple.VersionInfo' => VersionInfo(),
            'vault.DeletedVaultRecovery' => DeletedVaultRecovery(),
            'vault.MoveVaultRecord' => MoveVaultRecord(),
            'vault.PasswordMetadata' => PasswordMetadata(),
            'vault.VaultActivationStatus' => VaultActivationStatus(),
            'vault.VaultRecordSecrets' => VaultRecordSecrets(),
            'vault.VaultRecordShare' => VaultRecordShare(),
            'vault.VaultRecordShareSummary' => VaultRecordShareSummary(),
            'vault.VaultRecovery' => VaultRecovery(),
            'vault.VaultUnlock' => VaultUnlock(),
            'vault.VaultUnlockResponse' => VaultUnlockResponse(),
            'webhook.WebhookNameUuid' => WebhookNameUuid(),
            'webhook.WebhookPush' => WebhookPush(),
            _ => NonLinkable(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['\$type'] = (node) => type_ = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('\$type', type_);
        writer.writeAdditionalData(additionalData);
    }
}
