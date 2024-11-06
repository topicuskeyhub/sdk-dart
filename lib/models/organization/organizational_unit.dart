import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../group/group_primer.dart';
import './organizational_unit_additional_objects.dart';
import './organizational_unit_primer.dart';

class OrganizationalUnit extends OrganizationalUnitPrimer implements Parsable {
    ///  The additionalObjects property
    OrganizationalUnitAdditionalObjects? additionalObjects;
    ///  The auditorGroup property
    GroupPrimer? auditorGroup;
    ///  The createGroupApproveGroup property
    GroupPrimer? createGroupApproveGroup;
    ///  The createGroupPlaceholder property
    String? createGroupPlaceholder;
    ///  The depth property
    int? depth;
    ///  The description property
    String? description;
    ///  The enableTechAdminApproveGroup property
    GroupPrimer? enableTechAdminApproveGroup;
    ///  The owner property
    GroupPrimer? owner;
    ///  The parent property
    OrganizationalUnitPrimer? parent;
    ///  The recoveryFallbackGroup property
    GroupPrimer? recoveryFallbackGroup;
    ///  The removeGroupApproveGroup property
    GroupPrimer? removeGroupApproveGroup;
    /// Instantiates a new [OrganizationalUnit] and sets the default values.
    OrganizationalUnit() : super() {
        typeEscaped = 'organization.OrganizationalUnit';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static OrganizationalUnit createFromDiscriminatorValue(ParseNode parseNode) {
        return OrganizationalUnit();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<OrganizationalUnitAdditionalObjects>(OrganizationalUnitAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['auditorGroup'] = (node) => auditorGroup = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['createGroupApproveGroup'] = (node) => createGroupApproveGroup = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['createGroupPlaceholder'] = (node) => createGroupPlaceholder = node.getStringValue();
        deserializerMap['depth'] = (node) => depth = node.getIntValue();
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['enableTechAdminApproveGroup'] = (node) => enableTechAdminApproveGroup = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['owner'] = (node) => owner = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['parent'] = (node) => parent = node.getObjectValue<OrganizationalUnitPrimer>(OrganizationalUnitPrimer.createFromDiscriminatorValue);
        deserializerMap['recoveryFallbackGroup'] = (node) => recoveryFallbackGroup = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['removeGroupApproveGroup'] = (node) => removeGroupApproveGroup = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<OrganizationalUnitAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeObjectValue<GroupPrimer>('auditorGroup', auditorGroup);
        writer.writeObjectValue<GroupPrimer>('createGroupApproveGroup', createGroupApproveGroup);
        writer.writeStringValue('createGroupPlaceholder', createGroupPlaceholder);
        writer.writeStringValue('description', description);
        writer.writeObjectValue<GroupPrimer>('enableTechAdminApproveGroup', enableTechAdminApproveGroup);
        writer.writeObjectValue<GroupPrimer>('owner', owner);
        writer.writeObjectValue<OrganizationalUnitPrimer>('parent', parent);
        writer.writeObjectValue<GroupPrimer>('recoveryFallbackGroup', recoveryFallbackGroup);
        writer.writeObjectValue<GroupPrimer>('removeGroupApproveGroup', removeGroupApproveGroup);
    }
}
