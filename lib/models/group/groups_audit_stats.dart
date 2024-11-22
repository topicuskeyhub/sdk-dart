// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './group_classification.dart';

/// auto generated
class GroupsAuditStats extends NonLinkable implements Parsable {
    ///  The auditedGroups property
    int? auditedGroups;
    ///  The classifications property
    Iterable<GroupClassification>? classifications;
    ///  The overdueAuditGroups property
    int? overdueAuditGroups;
    ///  The overdueVaultPolicies property
    int? overdueVaultPolicies;
    ///  The unauditedGroups property
    int? unauditedGroups;
    ///  The validVaultPolicies property
    int? validVaultPolicies;
    ///  The vaultsWithoutPolicies property
    int? vaultsWithoutPolicies;
    /// Instantiates a new [GroupsAuditStats] and sets the default values.
    GroupsAuditStats() : super() {
        type_ = 'group.GroupsAuditStats';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GroupsAuditStats createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupsAuditStats();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['auditedGroups'] = (node) => auditedGroups = node.getIntValue();
        deserializerMap['classifications'] = (node) => classifications = node.getCollectionOfObjectValues<GroupClassification>(GroupClassification.createFromDiscriminatorValue);
        deserializerMap['overdueAuditGroups'] = (node) => overdueAuditGroups = node.getIntValue();
        deserializerMap['overdueVaultPolicies'] = (node) => overdueVaultPolicies = node.getIntValue();
        deserializerMap['unauditedGroups'] = (node) => unauditedGroups = node.getIntValue();
        deserializerMap['validVaultPolicies'] = (node) => validVaultPolicies = node.getIntValue();
        deserializerMap['vaultsWithoutPolicies'] = (node) => vaultsWithoutPolicies = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeIntValue('auditedGroups', auditedGroups);
        writer.writeCollectionOfObjectValues<GroupClassification>('classifications', classifications);
        writer.writeIntValue('overdueAuditGroups', overdueAuditGroups);
        writer.writeIntValue('overdueVaultPolicies', overdueVaultPolicies);
        writer.writeIntValue('unauditedGroups', unauditedGroups);
        writer.writeIntValue('validVaultPolicies', validVaultPolicies);
        writer.writeIntValue('vaultsWithoutPolicies', vaultsWithoutPolicies);
    }
}
