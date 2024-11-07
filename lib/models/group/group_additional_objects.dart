import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../audit/group_audit_linkable_wrapper.dart';
import '../audit_info.dart';
import '../client/client_application_linkable_wrapper.dart';
import '../client/o_auth2_client_permission_with_client_linkable_wrapper.dart';
import '../directory/account_directory_linkable_wrapper.dart';
import '../directory/account_directory_summary_linkable_wrapper.dart';
import '../mark/item_markers.dart';
import '../organization/organizational_unit_linkable_wrapper.dart';
import '../provisioning/owned_group_on_systems_wrapper.dart';
import '../provisioning/provisioned_system_linkable_wrapper.dart';
import '../serviceaccount/service_account_linkable_wrapper.dart';
import '../vault/vault.dart';
import '../webhook/webhook_linkable_wrapper.dart';
import './authorized_groups_wrapper.dart';
import './group_access_info.dart';
import './group_account.dart';
import './group_account_linkable_wrapper.dart';
import './group_auditing_info.dart';
import './group_client_linkable_wrapper.dart';
import './group_global_role_info.dart';
import './group_info.dart';
import './group_primer_linkable_wrapper.dart';
import './group_request_status.dart';
import './provisioning_group_linkable_wrapper.dart';

class GroupAdditionalObjects implements AdditionalDataHolder, Parsable {
    ///  The accounts property
    GroupAccountLinkableWrapper? accounts;
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The administeredClients property
    ClientApplicationLinkableWrapper? administeredClients;
    ///  The administeredSystems property
    ProvisionedSystemLinkableWrapper? administeredSystems;
    ///  The admins property
    GroupAccountLinkableWrapper? admins;
    ///  The audit property
    AuditInfo? audit;
    ///  The authorizedGroups property
    AuthorizedGroupsWrapper? authorizedGroups;
    ///  The clientPermissions property
    OAuth2ClientPermissionWithClientLinkableWrapper? clientPermissions;
    ///  The clients property
    GroupClientLinkableWrapper? clients;
    ///  The contentAdministeredSystems property
    ProvisionedSystemLinkableWrapper? contentAdministeredSystems;
    ///  The globalRoles property
    GroupGlobalRoleInfo? globalRoles;
    ///  The groupAccessInfo property
    GroupAccessInfo? groupAccessInfo;
    ///  The groupauditinginfo property
    GroupAuditingInfo? groupauditinginfo;
    ///  The groupinfo property
    GroupInfo? groupinfo;
    ///  The helpdesk property
    AccountDirectorySummaryLinkableWrapper? helpdesk;
    ///  The markers property
    ItemMarkers? markers;
    ///  The myaccount property
    GroupAccount? myaccount;
    ///  The mydelegatedaccount property
    GroupAccount? mydelegatedaccount;
    ///  The nestedGroups property
    GroupPrimerLinkableWrapper? nestedGroups;
    ///  The ownedClients property
    ClientApplicationLinkableWrapper? ownedClients;
    ///  The ownedDirectories property
    AccountDirectoryLinkableWrapper? ownedDirectories;
    ///  The ownedGroupsOnSystem property
    OwnedGroupOnSystemsWrapper? ownedGroupsOnSystem;
    ///  The ownedOrganizationalUnits property
    OrganizationalUnitLinkableWrapper? ownedOrganizationalUnits;
    ///  The ownedSystems property
    ProvisionedSystemLinkableWrapper? ownedSystems;
    ///  The recentAudits property
    GroupAuditLinkableWrapper? recentAudits;
    ///  The requeststatus property
    GroupRequestStatus? requeststatus;
    ///  The serviceAccounts property
    ServiceAccountLinkableWrapper? serviceAccounts;
    ///  The systems property
    ProvisioningGroupLinkableWrapper? systems;
    ///  The vault property
    Vault? vault;
    ///  The webhooks property
    WebhookLinkableWrapper? webhooks;
    /// Instantiates a new [GroupAdditionalObjects] and sets the default values.
    GroupAdditionalObjects() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static GroupAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['accounts'] = (node) => accounts = node.getObjectValue<GroupAccountLinkableWrapper>(GroupAccountLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['administeredClients'] = (node) => administeredClients = node.getObjectValue<ClientApplicationLinkableWrapper>(ClientApplicationLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['administeredSystems'] = (node) => administeredSystems = node.getObjectValue<ProvisionedSystemLinkableWrapper>(ProvisionedSystemLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['admins'] = (node) => admins = node.getObjectValue<GroupAccountLinkableWrapper>(GroupAccountLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        deserializerMap['authorizedGroups'] = (node) => authorizedGroups = node.getObjectValue<AuthorizedGroupsWrapper>(AuthorizedGroupsWrapper.createFromDiscriminatorValue);
        deserializerMap['clientPermissions'] = (node) => clientPermissions = node.getObjectValue<OAuth2ClientPermissionWithClientLinkableWrapper>(OAuth2ClientPermissionWithClientLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['clients'] = (node) => clients = node.getObjectValue<GroupClientLinkableWrapper>(GroupClientLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['contentAdministeredSystems'] = (node) => contentAdministeredSystems = node.getObjectValue<ProvisionedSystemLinkableWrapper>(ProvisionedSystemLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['globalRoles'] = (node) => globalRoles = node.getObjectValue<GroupGlobalRoleInfo>(GroupGlobalRoleInfo.createFromDiscriminatorValue);
        deserializerMap['groupAccessInfo'] = (node) => groupAccessInfo = node.getObjectValue<GroupAccessInfo>(GroupAccessInfo.createFromDiscriminatorValue);
        deserializerMap['groupauditinginfo'] = (node) => groupauditinginfo = node.getObjectValue<GroupAuditingInfo>(GroupAuditingInfo.createFromDiscriminatorValue);
        deserializerMap['groupinfo'] = (node) => groupinfo = node.getObjectValue<GroupInfo>(GroupInfo.createFromDiscriminatorValue);
        deserializerMap['helpdesk'] = (node) => helpdesk = node.getObjectValue<AccountDirectorySummaryLinkableWrapper>(AccountDirectorySummaryLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['markers'] = (node) => markers = node.getObjectValue<ItemMarkers>(ItemMarkers.createFromDiscriminatorValue);
        deserializerMap['myaccount'] = (node) => myaccount = node.getObjectValue<GroupAccount>(GroupAccount.createFromDiscriminatorValue);
        deserializerMap['mydelegatedaccount'] = (node) => mydelegatedaccount = node.getObjectValue<GroupAccount>(GroupAccount.createFromDiscriminatorValue);
        deserializerMap['nestedGroups'] = (node) => nestedGroups = node.getObjectValue<GroupPrimerLinkableWrapper>(GroupPrimerLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['ownedClients'] = (node) => ownedClients = node.getObjectValue<ClientApplicationLinkableWrapper>(ClientApplicationLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['ownedDirectories'] = (node) => ownedDirectories = node.getObjectValue<AccountDirectoryLinkableWrapper>(AccountDirectoryLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['ownedGroupsOnSystem'] = (node) => ownedGroupsOnSystem = node.getObjectValue<OwnedGroupOnSystemsWrapper>(OwnedGroupOnSystemsWrapper.createFromDiscriminatorValue);
        deserializerMap['ownedOrganizationalUnits'] = (node) => ownedOrganizationalUnits = node.getObjectValue<OrganizationalUnitLinkableWrapper>(OrganizationalUnitLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['ownedSystems'] = (node) => ownedSystems = node.getObjectValue<ProvisionedSystemLinkableWrapper>(ProvisionedSystemLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['recentAudits'] = (node) => recentAudits = node.getObjectValue<GroupAuditLinkableWrapper>(GroupAuditLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['requeststatus'] = (node) => requeststatus = node.getEnumValue<GroupRequestStatus>((stringValue) => GroupRequestStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['serviceAccounts'] = (node) => serviceAccounts = node.getObjectValue<ServiceAccountLinkableWrapper>(ServiceAccountLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['systems'] = (node) => systems = node.getObjectValue<ProvisioningGroupLinkableWrapper>(ProvisioningGroupLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['vault'] = (node) => vault = node.getObjectValue<Vault>(Vault.createFromDiscriminatorValue);
        deserializerMap['webhooks'] = (node) => webhooks = node.getObjectValue<WebhookLinkableWrapper>(WebhookLinkableWrapper.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<GroupAccountLinkableWrapper>('accounts', accounts);
        writer.writeObjectValue<ClientApplicationLinkableWrapper>('administeredClients', administeredClients);
        writer.writeObjectValue<ProvisionedSystemLinkableWrapper>('administeredSystems', administeredSystems);
        writer.writeObjectValue<GroupAccountLinkableWrapper>('admins', admins);
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeObjectValue<AuthorizedGroupsWrapper>('authorizedGroups', authorizedGroups);
        writer.writeObjectValue<OAuth2ClientPermissionWithClientLinkableWrapper>('clientPermissions', clientPermissions);
        writer.writeObjectValue<GroupClientLinkableWrapper>('clients', clients);
        writer.writeObjectValue<ProvisionedSystemLinkableWrapper>('contentAdministeredSystems', contentAdministeredSystems);
        writer.writeObjectValue<GroupGlobalRoleInfo>('globalRoles', globalRoles);
        writer.writeObjectValue<GroupAccessInfo>('groupAccessInfo', groupAccessInfo);
        writer.writeObjectValue<GroupAuditingInfo>('groupauditinginfo', groupauditinginfo);
        writer.writeObjectValue<GroupInfo>('groupinfo', groupinfo);
        writer.writeObjectValue<AccountDirectorySummaryLinkableWrapper>('helpdesk', helpdesk);
        writer.writeObjectValue<ItemMarkers>('markers', markers);
        writer.writeObjectValue<GroupAccount>('myaccount', myaccount);
        writer.writeObjectValue<GroupAccount>('mydelegatedaccount', mydelegatedaccount);
        writer.writeObjectValue<GroupPrimerLinkableWrapper>('nestedGroups', nestedGroups);
        writer.writeObjectValue<ClientApplicationLinkableWrapper>('ownedClients', ownedClients);
        writer.writeObjectValue<AccountDirectoryLinkableWrapper>('ownedDirectories', ownedDirectories);
        writer.writeObjectValue<OwnedGroupOnSystemsWrapper>('ownedGroupsOnSystem', ownedGroupsOnSystem);
        writer.writeObjectValue<OrganizationalUnitLinkableWrapper>('ownedOrganizationalUnits', ownedOrganizationalUnits);
        writer.writeObjectValue<ProvisionedSystemLinkableWrapper>('ownedSystems', ownedSystems);
        writer.writeObjectValue<GroupAuditLinkableWrapper>('recentAudits', recentAudits);
        writer.writeEnumValue<GroupRequestStatus>('requeststatus', requeststatus, (e) => e?.value);
        writer.writeObjectValue<ServiceAccountLinkableWrapper>('serviceAccounts', serviceAccounts);
        writer.writeObjectValue<ProvisioningGroupLinkableWrapper>('systems', systems);
        writer.writeObjectValue<Vault>('vault', vault);
        writer.writeObjectValue<WebhookLinkableWrapper>('webhooks', webhooks);
        writer.writeAdditionalData(additionalData);
    }
}
