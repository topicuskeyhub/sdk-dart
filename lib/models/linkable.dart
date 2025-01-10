// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './audit/audit_record.dart';
import './audit/group_audit.dart';
import './audit/group_audit_account.dart';
import './audit/nested_group_audit.dart';
import './auth/account.dart';
import './auth/account_primer.dart';
import './auth/internal_account.dart';
import './auth/permission.dart';
import './auth/stored_user_session.dart';
import './certificate/certificate.dart';
import './certificate/certificate_primer.dart';
import './client/client_application.dart';
import './client/client_application_primer.dart';
import './client/ldap_client.dart';
import './client/o_auth2_client.dart';
import './client/o_auth2_client_permission.dart';
import './client/o_auth2_client_permission_with_client.dart';
import './client/saml2_client.dart';
import './directory/account_directory.dart';
import './directory/account_directory_primer.dart';
import './directory/account_directory_summary.dart';
import './directory/internal_directory.dart';
import './directory/l_d_a_p_directory.dart';
import './directory/maintenance_directory.dart';
import './directory/o_i_d_c_directory.dart';
import './directory/pending_accounts_directory.dart';
import './group/account_group.dart';
import './group/group.dart';
import './group/group_account.dart';
import './group/group_audit_config.dart';
import './group/group_classification.dart';
import './group/group_classification_primer.dart';
import './group/group_client.dart';
import './group/group_folder.dart';
import './group/group_primer.dart';
import './group/provisioning_group.dart';
import './identity/account_attribute_definition.dart';
import './identity/account_attribute_rule.dart';
import './identity/account_attribute_value.dart';
import './identity/identity.dart';
import './launchpad/displayed_launchpad_tile.dart';
import './launchpad/launchpad_tile.dart';
import './launchpad/launchpad_tile_primer.dart';
import './launchpad/manual_launchpad_tile.dart';
import './launchpad/sso_application_launchpad_tile.dart';
import './launchpad/vault_record_launchpad_tile.dart';
import './link.dart';
import './organization/account_organizational_unit.dart';
import './organization/organizational_unit.dart';
import './organization/organizational_unit_account.dart';
import './organization/organizational_unit_primer.dart';
import './profile/access_profile.dart';
import './profile/access_profile_account.dart';
import './profile/access_profile_account_with_attributes.dart';
import './profile/access_profile_primer.dart';
import './profile/access_profile_provisioning.dart';
import './provisioning/abstract_provisioned_l_d_a_p.dart';
import './provisioning/group_on_system.dart';
import './provisioning/group_on_system_primer.dart';
import './provisioning/provision_number_sequence.dart';
import './provisioning/provisioned_a_d.dart';
import './provisioning/provisioned_account.dart';
import './provisioning/provisioned_azure_o_i_d_c_directory.dart';
import './provisioning/provisioned_azure_sync_l_d_a_p_directory.dart';
import './provisioning/provisioned_azure_tenant.dart';
import './provisioning/provisioned_internal_l_d_a_p.dart';
import './provisioning/provisioned_l_d_a_p.dart';
import './provisioning/provisioned_l_d_a_p_directory.dart';
import './provisioning/provisioned_namespace.dart';
import './provisioning/provisioned_s_c_i_m.dart';
import './provisioning/provisioned_system.dart';
import './provisioning/provisioned_system_primer.dart';
import './provisioning/provisioned_system_sync_log.dart';
import './request/abstract_access_profile_modification_request.dart';
import './request/abstract_application_modification_request.dart';
import './request/abstract_organizational_unit_modification_request.dart';
import './request/abstract_provisioned_system_modification_request.dart';
import './request/add_group_admin_request.dart';
import './request/create_group_on_system_request.dart';
import './request/create_group_request.dart';
import './request/create_provisioned_namespace_request.dart';
import './request/create_service_account_request.dart';
import './request/disable2_f_a_request.dart';
import './request/enable_profile_administration_request.dart';
import './request/enable_technical_administration_request.dart';
import './request/extend_access_request.dart';
import './request/grant_access_request.dart';
import './request/grant_application_request.dart';
import './request/grant_client_permission_request.dart';
import './request/grant_group_on_system_request.dart';
import './request/grant_group_on_system_request_request.dart';
import './request/grant_service_account_group_request.dart';
import './request/join_group_request.dart';
import './request/join_vault_request.dart';
import './request/link_directory_to_access_profile_request.dart';
import './request/modification_request.dart';
import './request/move_groups_request.dart';
import './request/password_reset_request.dart';
import './request/remove_group_request.dart';
import './request/remove_organizational_unit_request.dart';
import './request/remove_provisioned_system_request.dart';
import './request/review_audit_request.dart';
import './request/revoke_admin_request.dart';
import './request/setup_authorizing_group_request.dart';
import './request/setup_nested_group_request.dart';
import './request/transfer_access_profile_ownership_request.dart';
import './request/transfer_application_administration_request.dart';
import './request/transfer_application_ownership_request.dart';
import './request/transfer_group_on_system_ownership_request.dart';
import './request/transfer_organizational_unit_ownership_request.dart';
import './request/transfer_provisioned_system_administration_request.dart';
import './request/transfer_provisioned_system_content_administration_request.dart';
import './request/transfer_provisioned_system_ownership_request.dart';
import './request/transfer_service_account_administration_request.dart';
import './request/update_group_membership_request.dart';
import './request/update_license_request.dart';
import './request/verify_internal_account_request.dart';
import './serviceaccount/service_account.dart';
import './serviceaccount/service_account_group.dart';
import './serviceaccount/service_account_primer.dart';
import './vault/deleted_vault_holder.dart';
import './vault/vault.dart';
import './vault/vault_record.dart';
import './vault/vault_record_primer.dart';
import './webhook/webhook.dart';
import './webhook/webhook_delivery.dart';

/// auto generated
class Linkable implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The links property
    Iterable<Link>? links;
    ///  The permissions property
    Iterable<Permission>? permissions;
    ///  The Type property
    String? type_;
    /// Instantiates a new [Linkable] and sets the default values.
    Linkable() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static Linkable createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'audit.AuditRecord' => AuditRecord(),
            'audit.GroupAudit' => GroupAudit(),
            'audit.GroupAuditAccount' => GroupAuditAccount(),
            'audit.NestedGroupAudit' => NestedGroupAudit(),
            'auth.Account' => Account(),
            'auth.AccountPrimer' => AccountPrimer(),
            'auth.InternalAccount' => InternalAccount(),
            'auth.StoredUserSession' => StoredUserSession(),
            'certificate.Certificate' => Certificate(),
            'certificate.CertificatePrimer' => CertificatePrimer(),
            'client.ClientApplication' => ClientApplication(),
            'client.ClientApplicationPrimer' => ClientApplicationPrimer(),
            'client.LdapClient' => LdapClient(),
            'client.OAuth2Client' => OAuth2Client(),
            'client.OAuth2ClientPermission' => OAuth2ClientPermission(),
            'client.OAuth2ClientPermissionWithClient' => OAuth2ClientPermissionWithClient(),
            'client.Saml2Client' => Saml2Client(),
            'directory.AccountDirectory' => AccountDirectory(),
            'directory.AccountDirectoryPrimer' => AccountDirectoryPrimer(),
            'directory.AccountDirectorySummary' => AccountDirectorySummary(),
            'directory.InternalDirectory' => InternalDirectory(),
            'directory.LDAPDirectory' => LDAPDirectory(),
            'directory.MaintenanceDirectory' => MaintenanceDirectory(),
            'directory.OIDCDirectory' => OIDCDirectory(),
            'directory.PendingAccountsDirectory' => PendingAccountsDirectory(),
            'group.AccountGroup' => AccountGroup(),
            'group.Group' => Group(),
            'group.GroupAccount' => GroupAccount(),
            'group.GroupAuditConfig' => GroupAuditConfig(),
            'group.GroupClassification' => GroupClassification(),
            'group.GroupClassificationPrimer' => GroupClassificationPrimer(),
            'group.GroupClient' => GroupClient(),
            'group.GroupFolder' => GroupFolder(),
            'group.GroupPrimer' => GroupPrimer(),
            'group.ProvisioningGroup' => ProvisioningGroup(),
            'identity.AccountAttributeDefinition' => AccountAttributeDefinition(),
            'identity.AccountAttributeRule' => AccountAttributeRule(),
            'identity.AccountAttributeValue' => AccountAttributeValue(),
            'identity.Identity' => Identity(),
            'launchpad.DisplayedLaunchpadTile' => DisplayedLaunchpadTile(),
            'launchpad.LaunchpadTile' => LaunchpadTile(),
            'launchpad.LaunchpadTilePrimer' => LaunchpadTilePrimer(),
            'launchpad.ManualLaunchpadTile' => ManualLaunchpadTile(),
            'launchpad.SsoApplicationLaunchpadTile' => SsoApplicationLaunchpadTile(),
            'launchpad.VaultRecordLaunchpadTile' => VaultRecordLaunchpadTile(),
            'organization.AccountOrganizationalUnit' => AccountOrganizationalUnit(),
            'organization.OrganizationalUnit' => OrganizationalUnit(),
            'organization.OrganizationalUnitAccount' => OrganizationalUnitAccount(),
            'organization.OrganizationalUnitPrimer' => OrganizationalUnitPrimer(),
            'profile.AccessProfile' => AccessProfile(),
            'profile.AccessProfileAccount' => AccessProfileAccount(),
            'profile.AccessProfileAccountWithAttributes' => AccessProfileAccountWithAttributes(),
            'profile.AccessProfilePrimer' => AccessProfilePrimer(),
            'profile.AccessProfileProvisioning' => AccessProfileProvisioning(),
            'provisioning.AbstractProvisionedLDAP' => AbstractProvisionedLDAP(),
            'provisioning.GroupOnSystem' => GroupOnSystem(),
            'provisioning.GroupOnSystemPrimer' => GroupOnSystemPrimer(),
            'provisioning.ProvisionedAccount' => ProvisionedAccount(),
            'provisioning.ProvisionedAD' => ProvisionedAD(),
            'provisioning.ProvisionedAzureOIDCDirectory' => ProvisionedAzureOIDCDirectory(),
            'provisioning.ProvisionedAzureSyncLDAPDirectory' => ProvisionedAzureSyncLDAPDirectory(),
            'provisioning.ProvisionedAzureTenant' => ProvisionedAzureTenant(),
            'provisioning.ProvisionedInternalLDAP' => ProvisionedInternalLDAP(),
            'provisioning.ProvisionedLDAP' => ProvisionedLDAP(),
            'provisioning.ProvisionedLDAPDirectory' => ProvisionedLDAPDirectory(),
            'provisioning.ProvisionedNamespace' => ProvisionedNamespace(),
            'provisioning.ProvisionedSCIM' => ProvisionedSCIM(),
            'provisioning.ProvisionedSystem' => ProvisionedSystem(),
            'provisioning.ProvisionedSystemPrimer' => ProvisionedSystemPrimer(),
            'provisioning.ProvisionedSystemSyncLog' => ProvisionedSystemSyncLog(),
            'provisioning.ProvisionNumberSequence' => ProvisionNumberSequence(),
            'request.AbstractAccessProfileModificationRequest' => AbstractAccessProfileModificationRequest(),
            'request.AbstractApplicationModificationRequest' => AbstractApplicationModificationRequest(),
            'request.AbstractOrganizationalUnitModificationRequest' => AbstractOrganizationalUnitModificationRequest(),
            'request.AbstractProvisionedSystemModificationRequest' => AbstractProvisionedSystemModificationRequest(),
            'request.AddGroupAdminRequest' => AddGroupAdminRequest(),
            'request.CreateGroupOnSystemRequest' => CreateGroupOnSystemRequest(),
            'request.CreateGroupRequest' => CreateGroupRequest(),
            'request.CreateProvisionedNamespaceRequest' => CreateProvisionedNamespaceRequest(),
            'request.CreateServiceAccountRequest' => CreateServiceAccountRequest(),
            'request.Disable2FARequest' => Disable2FARequest(),
            'request.EnableProfileAdministrationRequest' => EnableProfileAdministrationRequest(),
            'request.EnableTechnicalAdministrationRequest' => EnableTechnicalAdministrationRequest(),
            'request.ExtendAccessRequest' => ExtendAccessRequest(),
            'request.GrantAccessRequest' => GrantAccessRequest(),
            'request.GrantApplicationRequest' => GrantApplicationRequest(),
            'request.GrantClientPermissionRequest' => GrantClientPermissionRequest(),
            'request.GrantGroupOnSystemRequest' => GrantGroupOnSystemRequest(),
            'request.GrantGroupOnSystemRequestRequest' => GrantGroupOnSystemRequestRequest(),
            'request.GrantServiceAccountGroupRequest' => GrantServiceAccountGroupRequest(),
            'request.JoinGroupRequest' => JoinGroupRequest(),
            'request.JoinVaultRequest' => JoinVaultRequest(),
            'request.LinkDirectoryToAccessProfileRequest' => LinkDirectoryToAccessProfileRequest(),
            'request.ModificationRequest' => ModificationRequest(),
            'request.MoveGroupsRequest' => MoveGroupsRequest(),
            'request.PasswordResetRequest' => PasswordResetRequest(),
            'request.RemoveGroupRequest' => RemoveGroupRequest(),
            'request.RemoveOrganizationalUnitRequest' => RemoveOrganizationalUnitRequest(),
            'request.RemoveProvisionedSystemRequest' => RemoveProvisionedSystemRequest(),
            'request.ReviewAuditRequest' => ReviewAuditRequest(),
            'request.RevokeAdminRequest' => RevokeAdminRequest(),
            'request.SetupAuthorizingGroupRequest' => SetupAuthorizingGroupRequest(),
            'request.SetupNestedGroupRequest' => SetupNestedGroupRequest(),
            'request.TransferAccessProfileOwnershipRequest' => TransferAccessProfileOwnershipRequest(),
            'request.TransferApplicationAdministrationRequest' => TransferApplicationAdministrationRequest(),
            'request.TransferApplicationOwnershipRequest' => TransferApplicationOwnershipRequest(),
            'request.TransferGroupOnSystemOwnershipRequest' => TransferGroupOnSystemOwnershipRequest(),
            'request.TransferOrganizationalUnitOwnershipRequest' => TransferOrganizationalUnitOwnershipRequest(),
            'request.TransferProvisionedSystemAdministrationRequest' => TransferProvisionedSystemAdministrationRequest(),
            'request.TransferProvisionedSystemContentAdministrationRequest' => TransferProvisionedSystemContentAdministrationRequest(),
            'request.TransferProvisionedSystemOwnershipRequest' => TransferProvisionedSystemOwnershipRequest(),
            'request.TransferServiceAccountAdministrationRequest' => TransferServiceAccountAdministrationRequest(),
            'request.UpdateGroupMembershipRequest' => UpdateGroupMembershipRequest(),
            'request.UpdateLicenseRequest' => UpdateLicenseRequest(),
            'request.VerifyInternalAccountRequest' => VerifyInternalAccountRequest(),
            'serviceaccount.ServiceAccount' => ServiceAccount(),
            'serviceaccount.ServiceAccountGroup' => ServiceAccountGroup(),
            'serviceaccount.ServiceAccountPrimer' => ServiceAccountPrimer(),
            'vault.DeletedVaultHolder' => DeletedVaultHolder(),
            'vault.Vault' => Vault(),
            'vault.VaultRecord' => VaultRecord(),
            'vault.VaultRecordPrimer' => VaultRecordPrimer(),
            'webhook.Webhook' => Webhook(),
            'webhook.WebhookDelivery' => WebhookDelivery(),
            _ => Linkable(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['links'] = (node) => links = node.getCollectionOfObjectValues<Link>(Link.createFromDiscriminatorValue);
        deserializerMap['permissions'] = (node) => permissions = node.getCollectionOfObjectValues<Permission>(Permission.createFromDiscriminatorValue);
        deserializerMap['\$type'] = (node) => type_ = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<Link>('links', links);
        writer.writeCollectionOfObjectValues<Permission>('permissions', permissions);
        writer.writeStringValue('\$type', type_);
        writer.writeAdditionalData(additionalData);
    }
}
