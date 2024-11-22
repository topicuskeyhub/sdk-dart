// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import '../organization/organizational_unit_primer.dart';

/// auto generated
class GroupGlobalRoleInfo extends NonLinkable implements Parsable {
    ///  The createGroupApproveGroupFor property
    Iterable<OrganizationalUnitPrimer>? createGroupApproveGroupFor;
    ///  The enableTechAdminApproveGroupFor property
    Iterable<OrganizationalUnitPrimer>? enableTechAdminApproveGroupFor;
    ///  The recoveryFallbackGroupFor property
    Iterable<OrganizationalUnitPrimer>? recoveryFallbackGroupFor;
    ///  The removeGroupApproveGroupFor property
    Iterable<OrganizationalUnitPrimer>? removeGroupApproveGroupFor;
    /// Instantiates a new [GroupGlobalRoleInfo] and sets the default values.
    GroupGlobalRoleInfo() : super() {
        type_ = 'group.GroupGlobalRoleInfo';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GroupGlobalRoleInfo createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupGlobalRoleInfo();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['createGroupApproveGroupFor'] = (node) => createGroupApproveGroupFor = node.getCollectionOfObjectValues<OrganizationalUnitPrimer>(OrganizationalUnitPrimer.createFromDiscriminatorValue);
        deserializerMap['enableTechAdminApproveGroupFor'] = (node) => enableTechAdminApproveGroupFor = node.getCollectionOfObjectValues<OrganizationalUnitPrimer>(OrganizationalUnitPrimer.createFromDiscriminatorValue);
        deserializerMap['recoveryFallbackGroupFor'] = (node) => recoveryFallbackGroupFor = node.getCollectionOfObjectValues<OrganizationalUnitPrimer>(OrganizationalUnitPrimer.createFromDiscriminatorValue);
        deserializerMap['removeGroupApproveGroupFor'] = (node) => removeGroupApproveGroupFor = node.getCollectionOfObjectValues<OrganizationalUnitPrimer>(OrganizationalUnitPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<OrganizationalUnitPrimer>('createGroupApproveGroupFor', createGroupApproveGroupFor);
        writer.writeCollectionOfObjectValues<OrganizationalUnitPrimer>('enableTechAdminApproveGroupFor', enableTechAdminApproveGroupFor);
        writer.writeCollectionOfObjectValues<OrganizationalUnitPrimer>('recoveryFallbackGroupFor', recoveryFallbackGroupFor);
        writer.writeCollectionOfObjectValues<OrganizationalUnitPrimer>('removeGroupApproveGroupFor', removeGroupApproveGroupFor);
    }
}
