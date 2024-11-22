// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../request/authorizing_group_type.dart';
import './group_additional_objects.dart';
import './group_audit_config.dart';
import './group_classification_primer.dart';
import './group_extended_access.dart';
import './group_primer.dart';
import './vault_recovery_availability.dart';

/// auto generated
class Group extends GroupPrimer implements Parsable {
    ///  The additionalObjects property
    GroupAdditionalObjects? additionalObjects;
    ///  The applicationAdministration property
    bool? applicationAdministration;
    ///  The auditConfig property
    GroupAuditConfig? auditConfig;
    ///  The auditRequested property
    bool? auditRequested;
    ///  The authorizingGroupAuditing property
    GroupPrimer? authorizingGroupAuditing;
    ///  The authorizingGroupDelegation property
    GroupPrimer? authorizingGroupDelegation;
    ///  The authorizingGroupMembership property
    GroupPrimer? authorizingGroupMembership;
    ///  The authorizingGroupProvisioning property
    GroupPrimer? authorizingGroupProvisioning;
    ///  The authorizingGroupTypes property
    Iterable<AuthorizingGroupType>? authorizingGroupTypes;
    ///  The classification property
    GroupClassificationPrimer? classification;
    ///  The description property
    String? description;
    ///  The extendedAccess property
    GroupExtendedAccess? extendedAccess;
    ///  The hideAuditTrail property
    bool? hideAuditTrail;
    ///  The nestedUnder property
    GroupPrimer? nestedUnder;
    ///  The privateGroup property
    bool? privateGroup;
    ///  The profileAdministration property
    bool? profileAdministration;
    ///  The recordTrail property
    bool? recordTrail;
    ///  The rotatingPasswordRequired property
    bool? rotatingPasswordRequired;
    ///  The singleManaged property
    bool? singleManaged;
    ///  The vaultRecovery property
    VaultRecoveryAvailability? vaultRecovery;
    ///  The vaultRequiresActivation property
    bool? vaultRequiresActivation;
    /// Instantiates a new [Group] and sets the default values.
    Group() : super() {
        type_ = 'group.Group';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static Group createFromDiscriminatorValue(ParseNode parseNode) {
        return Group();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<GroupAdditionalObjects>(GroupAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['applicationAdministration'] = (node) => applicationAdministration = node.getBoolValue();
        deserializerMap['auditConfig'] = (node) => auditConfig = node.getObjectValue<GroupAuditConfig>(GroupAuditConfig.createFromDiscriminatorValue);
        deserializerMap['auditRequested'] = (node) => auditRequested = node.getBoolValue();
        deserializerMap['authorizingGroupAuditing'] = (node) => authorizingGroupAuditing = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['authorizingGroupDelegation'] = (node) => authorizingGroupDelegation = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['authorizingGroupMembership'] = (node) => authorizingGroupMembership = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['authorizingGroupProvisioning'] = (node) => authorizingGroupProvisioning = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['authorizingGroupTypes'] = (node) => authorizingGroupTypes = node.getCollectionOfEnumValues<AuthorizingGroupType>((stringValue) => AuthorizingGroupType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['classification'] = (node) => classification = node.getObjectValue<GroupClassificationPrimer>(GroupClassificationPrimer.createFromDiscriminatorValue);
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['extendedAccess'] = (node) => extendedAccess = node.getEnumValue<GroupExtendedAccess>((stringValue) => GroupExtendedAccess.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['hideAuditTrail'] = (node) => hideAuditTrail = node.getBoolValue();
        deserializerMap['nestedUnder'] = (node) => nestedUnder = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['privateGroup'] = (node) => privateGroup = node.getBoolValue();
        deserializerMap['profileAdministration'] = (node) => profileAdministration = node.getBoolValue();
        deserializerMap['recordTrail'] = (node) => recordTrail = node.getBoolValue();
        deserializerMap['rotatingPasswordRequired'] = (node) => rotatingPasswordRequired = node.getBoolValue();
        deserializerMap['singleManaged'] = (node) => singleManaged = node.getBoolValue();
        deserializerMap['vaultRecovery'] = (node) => vaultRecovery = node.getEnumValue<VaultRecoveryAvailability>((stringValue) => VaultRecoveryAvailability.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['vaultRequiresActivation'] = (node) => vaultRequiresActivation = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<GroupAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeBoolValue('applicationAdministration', value:applicationAdministration);
        writer.writeObjectValue<GroupAuditConfig>('auditConfig', auditConfig);
        writer.writeObjectValue<GroupPrimer>('authorizingGroupAuditing', authorizingGroupAuditing);
        writer.writeObjectValue<GroupPrimer>('authorizingGroupDelegation', authorizingGroupDelegation);
        writer.writeObjectValue<GroupPrimer>('authorizingGroupMembership', authorizingGroupMembership);
        writer.writeObjectValue<GroupPrimer>('authorizingGroupProvisioning', authorizingGroupProvisioning);
        writer.writeObjectValue<GroupClassificationPrimer>('classification', classification);
        writer.writeStringValue('description', description);
        writer.writeEnumValue<GroupExtendedAccess>('extendedAccess', extendedAccess, (e) => e?.value);
        writer.writeBoolValue('hideAuditTrail', value:hideAuditTrail);
        writer.writeObjectValue<GroupPrimer>('nestedUnder', nestedUnder);
        writer.writeBoolValue('privateGroup', value:privateGroup);
        writer.writeBoolValue('profileAdministration', value:profileAdministration);
        writer.writeBoolValue('recordTrail', value:recordTrail);
        writer.writeBoolValue('rotatingPasswordRequired', value:rotatingPasswordRequired);
        writer.writeBoolValue('singleManaged', value:singleManaged);
        writer.writeEnumValue<VaultRecoveryAvailability>('vaultRecovery', vaultRecovery, (e) => e?.value);
        writer.writeBoolValue('vaultRequiresActivation', value:vaultRequiresActivation);
    }
}
