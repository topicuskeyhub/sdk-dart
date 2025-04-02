// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import '../organization/organizational_unit_primer.dart';
import './abstract_provisioned_l_d_a_p.dart';
import './provisioned_a_d.dart';
import './provisioned_azure_o_i_d_c_directory.dart';
import './provisioned_azure_sync_l_d_a_p_directory.dart';
import './provisioned_azure_tenant.dart';
import './provisioned_internal_l_d_a_p.dart';
import './provisioned_l_d_a_p.dart';
import './provisioned_l_d_a_p_directory.dart';
import './provisioned_namespace.dart';
import './provisioned_s_c_i_m.dart';
import './provisioned_system.dart';
import './provisioned_system_type.dart';

/// auto generated
class ProvisionedSystemPrimer extends Linkable implements Parsable {
    ///  The active property
    bool? active;
    ///  The adminPermissions property
    bool? adminPermissions;
    ///  The contentAdminPermissions property
    bool? contentAdminPermissions;
    ///  The name property
    String? name;
    ///  The organizationalUnit property
    OrganizationalUnitPrimer? organizationalUnit;
    ///  The ownerPermissions property
    bool? ownerPermissions;
    ///  The type property
    ProvisionedSystemType? provisionedSystemPrimerType;
    ///  The uuid property
    String? uuid;
    /// Instantiates a new [ProvisionedSystemPrimer] and sets the default values.
    ProvisionedSystemPrimer() : super() {
        type_ = 'provisioning.ProvisionedSystemPrimer';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisionedSystemPrimer createFromDiscriminatorValue(ParseNode parseNode) {
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
            'provisioning.ProvisionedSystem' => ProvisionedSystem(),
            _ => ProvisionedSystemPrimer(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['active'] = (node) => active = node.getBoolValue();
        deserializerMap['adminPermissions'] = (node) => adminPermissions = node.getBoolValue();
        deserializerMap['contentAdminPermissions'] = (node) => contentAdminPermissions = node.getBoolValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['organizationalUnit'] = (node) => organizationalUnit = node.getObjectValue<OrganizationalUnitPrimer>(OrganizationalUnitPrimer.createFromDiscriminatorValue);
        deserializerMap['ownerPermissions'] = (node) => ownerPermissions = node.getBoolValue();
        deserializerMap['type'] = (node) => provisionedSystemPrimerType = node.getEnumValue<ProvisionedSystemType>((stringValue) => ProvisionedSystemType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['uuid'] = (node) => uuid = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('active', value:active);
        writer.writeStringValue('name', name);
        writer.writeObjectValue<OrganizationalUnitPrimer>('organizationalUnit', organizationalUnit);
        writer.writeEnumValue<ProvisionedSystemType>('type', provisionedSystemPrimerType, (e) => e?.value);
    }
}
