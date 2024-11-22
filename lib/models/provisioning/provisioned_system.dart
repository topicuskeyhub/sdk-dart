// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import 'package:uuid/uuid.dart';
import '../group/group_primer.dart';
import './abstract_provisioned_l_d_a_p.dart';
import './group_on_system_provisioning.dart';
import './provisioned_a_d.dart';
import './provisioned_azure_o_i_d_c_directory.dart';
import './provisioned_azure_sync_l_d_a_p_directory.dart';
import './provisioned_azure_tenant.dart';
import './provisioned_internal_l_d_a_p.dart';
import './provisioned_l_d_a_p.dart';
import './provisioned_l_d_a_p_directory.dart';
import './provisioned_namespace.dart';
import './provisioned_s_c_i_m.dart';
import './provisioned_system_additional_objects.dart';
import './provisioned_system_cleanup_period.dart';
import './provisioned_system_primer.dart';

/// auto generated
class ProvisionedSystem extends ProvisionedSystemPrimer implements Parsable {
    ///  The accountCount property
    int? accountCount;
    ///  The additionalObjects property
    ProvisionedSystemAdditionalObjects? additionalObjects;
    ///  The cleanupPeriod property
    ProvisionedSystemCleanupPeriod? cleanupPeriod;
    ///  The contentAdministrator property
    GroupPrimer? contentAdministrator;
    ///  The externalUuid property
    UuidValue? externalUuid;
    ///  The groupOnSystemProvisioning property
    GroupOnSystemProvisioning? groupOnSystemProvisioning;
    ///  The owner property
    GroupPrimer? owner;
    ///  The selfServiceExistingGroups property
    bool? selfServiceExistingGroups;
    ///  The selfServiceNewGroups property
    bool? selfServiceNewGroups;
    ///  The selfServiceNewNamespaces property
    bool? selfServiceNewNamespaces;
    ///  The selfServiceServiceAccounts property
    bool? selfServiceServiceAccounts;
    ///  The shouldDestroyUnknownAccounts property
    bool? shouldDestroyUnknownAccounts;
    ///  The technicalAdministrator property
    GroupPrimer? technicalAdministrator;
    ///  The usernamePrefix property
    String? usernamePrefix;
    /// Instantiates a new [ProvisionedSystem] and sets the default values.
    ProvisionedSystem() : super() {
        type_ = 'provisioning.ProvisionedSystem';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisionedSystem createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'provisioning.AbstractProvisionedLDAP' => AbstractProvisionedLDAP(),
            'provisioning.ProvisionedAD' => ProvisionedAD(),
            'provisioning.ProvisionedAzureOIDCDirectory' => ProvisionedAzureOIDCDirectory(),
            'provisioning.ProvisionedAzureSyncLDAPDirectory' => ProvisionedAzureSyncLDAPDirectory(),
            'provisioning.ProvisionedAzureTenant' => ProvisionedAzureTenant(),
            'provisioning.ProvisionedInternalLDAP' => ProvisionedInternalLDAP(),
            'provisioning.ProvisionedLDAP' => ProvisionedLDAP(),
            'provisioning.ProvisionedLDAPDirectory' => ProvisionedLDAPDirectory(),
            'provisioning.ProvisionedNamespace' => ProvisionedNamespace(),
            'provisioning.ProvisionedSCIM' => ProvisionedSCIM(),
            _ => ProvisionedSystem(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['accountCount'] = (node) => accountCount = node.getIntValue();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<ProvisionedSystemAdditionalObjects>(ProvisionedSystemAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['cleanupPeriod'] = (node) => cleanupPeriod = node.getObjectValue<ProvisionedSystemCleanupPeriod>(ProvisionedSystemCleanupPeriod.createFromDiscriminatorValue);
        deserializerMap['contentAdministrator'] = (node) => contentAdministrator = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['externalUuid'] = (node) => externalUuid = node.getGuidValue();
        deserializerMap['groupOnSystemProvisioning'] = (node) => groupOnSystemProvisioning = node.getEnumValue<GroupOnSystemProvisioning>((stringValue) => GroupOnSystemProvisioning.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['owner'] = (node) => owner = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['selfServiceExistingGroups'] = (node) => selfServiceExistingGroups = node.getBoolValue();
        deserializerMap['selfServiceNewGroups'] = (node) => selfServiceNewGroups = node.getBoolValue();
        deserializerMap['selfServiceNewNamespaces'] = (node) => selfServiceNewNamespaces = node.getBoolValue();
        deserializerMap['selfServiceServiceAccounts'] = (node) => selfServiceServiceAccounts = node.getBoolValue();
        deserializerMap['shouldDestroyUnknownAccounts'] = (node) => shouldDestroyUnknownAccounts = node.getBoolValue();
        deserializerMap['technicalAdministrator'] = (node) => technicalAdministrator = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['usernamePrefix'] = (node) => usernamePrefix = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<ProvisionedSystemAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeObjectValue<ProvisionedSystemCleanupPeriod>('cleanupPeriod', cleanupPeriod);
        writer.writeObjectValue<GroupPrimer>('contentAdministrator', contentAdministrator);
        writer.writeEnumValue<GroupOnSystemProvisioning>('groupOnSystemProvisioning', groupOnSystemProvisioning, (e) => e?.value);
        writer.writeObjectValue<GroupPrimer>('owner', owner);
        writer.writeBoolValue('selfServiceExistingGroups', value:selfServiceExistingGroups);
        writer.writeBoolValue('selfServiceNewGroups', value:selfServiceNewGroups);
        writer.writeBoolValue('selfServiceNewNamespaces', value:selfServiceNewNamespaces);
        writer.writeBoolValue('selfServiceServiceAccounts', value:selfServiceServiceAccounts);
        writer.writeBoolValue('shouldDestroyUnknownAccounts', value:shouldDestroyUnknownAccounts);
        writer.writeObjectValue<GroupPrimer>('technicalAdministrator', technicalAdministrator);
        writer.writeStringValue('usernamePrefix', usernamePrefix);
    }
}
