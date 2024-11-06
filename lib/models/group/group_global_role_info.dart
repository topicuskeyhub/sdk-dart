import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import '../organization/organizational_unit_primer.dart';

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
        typeEscaped = 'group.GroupGlobalRoleInfo';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static GroupGlobalRoleInfo createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupGlobalRoleInfo();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['createGroupApproveGroupFor'] = (node) => createGroupApproveGroupFor = node.getCollectionOfObjectValues<OrganizationalUnitPrimer>(OrganizationalUnitPrimer.createFromDiscriminatorValue);
        deserializerMap['enableTechAdminApproveGroupFor'] = (node) => enableTechAdminApproveGroupFor = node.getCollectionOfObjectValues<OrganizationalUnitPrimer>(OrganizationalUnitPrimer.createFromDiscriminatorValue);
        deserializerMap['recoveryFallbackGroupFor'] = (node) => recoveryFallbackGroupFor = node.getCollectionOfObjectValues<OrganizationalUnitPrimer>(OrganizationalUnitPrimer.createFromDiscriminatorValue);
        deserializerMap['removeGroupApproveGroupFor'] = (node) => removeGroupApproveGroupFor = node.getCollectionOfObjectValues<OrganizationalUnitPrimer>(OrganizationalUnitPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<OrganizationalUnitPrimer>('createGroupApproveGroupFor', createGroupApproveGroupFor);
        writer.writeCollectionOfObjectValues<OrganizationalUnitPrimer>('enableTechAdminApproveGroupFor', enableTechAdminApproveGroupFor);
        writer.writeCollectionOfObjectValues<OrganizationalUnitPrimer>('recoveryFallbackGroupFor', recoveryFallbackGroupFor);
        writer.writeCollectionOfObjectValues<OrganizationalUnitPrimer>('removeGroupApproveGroupFor', removeGroupApproveGroupFor);
    }
}
