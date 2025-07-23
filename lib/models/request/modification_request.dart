// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../auth/account_primer.dart';
import '../group/group_primer.dart';
import '../linkable.dart';
import './abstract_access_profile_modification_request.dart';
import './abstract_application_modification_request.dart';
import './abstract_organizational_unit_modification_request.dart';
import './abstract_provisioned_system_modification_request.dart';
import './add_group_admin_request.dart';
import './add_group_to_access_profile_request.dart';
import './create_group_on_system_request.dart';
import './create_group_request.dart';
import './create_provisioned_namespace_request.dart';
import './create_service_account_request.dart';
import './disable2_f_a_request.dart';
import './enable_profile_administration_request.dart';
import './enable_technical_administration_request.dart';
import './extend_access_request.dart';
import './grant_access_request.dart';
import './grant_application_request.dart';
import './grant_client_permission_request.dart';
import './grant_group_on_system_request.dart';
import './grant_group_on_system_request_request.dart';
import './grant_service_account_group_request.dart';
import './join_group_request.dart';
import './join_vault_request.dart';
import './link_directory_to_access_profile_request.dart';
import './modification_request_additional_objects.dart';
import './modification_request_status.dart';
import './modification_request_type.dart';
import './move_groups_request.dart';
import './password_reset_request.dart';
import './remove_access_profile_request.dart';
import './remove_group_request.dart';
import './remove_organizational_unit_request.dart';
import './remove_provisioned_system_request.dart';
import './review_audit_request.dart';
import './revoke_admin_request.dart';
import './setup_authorizing_group_request.dart';
import './setup_nested_group_request.dart';
import './transfer_access_profile_ownership_request.dart';
import './transfer_application_administration_request.dart';
import './transfer_application_ownership_request.dart';
import './transfer_group_on_system_ownership_request.dart';
import './transfer_organizational_unit_ownership_request.dart';
import './transfer_provisioned_system_administration_request.dart';
import './transfer_provisioned_system_content_administration_request.dart';
import './transfer_provisioned_system_ownership_request.dart';
import './transfer_service_account_administration_request.dart';
import './update_group_membership_request.dart';
import './update_license_request.dart';
import './verify_internal_account_request.dart';

/// auto generated
class ModificationRequest extends Linkable implements Parsable {
    ///  The account property
    AccountPrimer? account;
    ///  The additionalObjects property
    ModificationRequestAdditionalObjects? additionalObjects;
    ///  The comment property
    String? comment;
    ///  The feedback property
    String? feedback;
    ///  The group property
    GroupPrimer? group;
    ///  The mailKey property
    String? mailKey;
    ///  The type property
    ModificationRequestType? modificationRequestType;
    ///  The status property
    ModificationRequestStatus? status;
    /// Instantiates a new [ModificationRequest] and sets the default values.
    ModificationRequest() : super() {
        type_ = 'request.ModificationRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ModificationRequest createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'request.AbstractAccessProfileModificationRequest' => AbstractAccessProfileModificationRequest(),
            'request.AbstractApplicationModificationRequest' => AbstractApplicationModificationRequest(),
            'request.AbstractOrganizationalUnitModificationRequest' => AbstractOrganizationalUnitModificationRequest(),
            'request.AbstractProvisionedSystemModificationRequest' => AbstractProvisionedSystemModificationRequest(),
            'request.AddGroupAdminRequest' => AddGroupAdminRequest(),
            'request.AddGroupToAccessProfileRequest' => AddGroupToAccessProfileRequest(),
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
            'request.MoveGroupsRequest' => MoveGroupsRequest(),
            'request.PasswordResetRequest' => PasswordResetRequest(),
            'request.RemoveAccessProfileRequest' => RemoveAccessProfileRequest(),
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
            _ => ModificationRequest(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['account'] = (node) => account = node.getObjectValue<AccountPrimer>(AccountPrimer.createFromDiscriminatorValue);
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<ModificationRequestAdditionalObjects>(ModificationRequestAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['comment'] = (node) => comment = node.getStringValue();
        deserializerMap['feedback'] = (node) => feedback = node.getStringValue();
        deserializerMap['group'] = (node) => group = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['mailKey'] = (node) => mailKey = node.getStringValue();
        deserializerMap['type'] = (node) => modificationRequestType = node.getEnumValue<ModificationRequestType>((stringValue) => ModificationRequestType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['status'] = (node) => status = node.getEnumValue<ModificationRequestStatus>((stringValue) => ModificationRequestStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountPrimer>('account', account);
        writer.writeObjectValue<ModificationRequestAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeStringValue('comment', comment);
        writer.writeStringValue('feedback', feedback);
        writer.writeObjectValue<GroupPrimer>('group', group);
        writer.writeEnumValue<ModificationRequestType>('type', modificationRequestType, (e) => e?.value);
        writer.writeEnumValue<ModificationRequestStatus>('status', status, (e) => e?.value);
    }
}
