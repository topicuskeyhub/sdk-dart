import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../group/group_primer.dart';
import '../non_linkable.dart';

class OrganizationalUnitSettings extends NonLinkable implements Parsable {
    ///  The createGroupApproveGroup property
    GroupPrimer? createGroupApproveGroup;
    ///  The createGroupPlaceholder property
    String? createGroupPlaceholder;
    ///  The enableTechAdminApproveGroup property
    GroupPrimer? enableTechAdminApproveGroup;
    ///  The recoveryFallbackGroup property
    GroupPrimer? recoveryFallbackGroup;
    ///  The removeGroupApproveGroup property
    GroupPrimer? removeGroupApproveGroup;
    /// Instantiates a new [OrganizationalUnitSettings] and sets the default values.
     OrganizationalUnitSettings() : super() {
        typeEscaped = 'organization.OrganizationalUnitSettings';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static OrganizationalUnitSettings createFromDiscriminatorValue(ParseNode parseNode) {
        return OrganizationalUnitSettings();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['createGroupApproveGroup'] = (node) => createGroupApproveGroup = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['createGroupPlaceholder'] = (node) => createGroupPlaceholder = node.getStringValue();
        deserializerMap['enableTechAdminApproveGroup'] = (node) => enableTechAdminApproveGroup = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['recoveryFallbackGroup'] = (node) => recoveryFallbackGroup = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['removeGroupApproveGroup'] = (node) => removeGroupApproveGroup = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<GroupPrimer>('createGroupApproveGroup', createGroupApproveGroup);
        writer.writeStringValue('createGroupPlaceholder', createGroupPlaceholder);
        writer.writeObjectValue<GroupPrimer>('enableTechAdminApproveGroup', enableTechAdminApproveGroup);
        writer.writeObjectValue<GroupPrimer>('recoveryFallbackGroup', recoveryFallbackGroup);
        writer.writeObjectValue<GroupPrimer>('removeGroupApproveGroup', removeGroupApproveGroup);
    }
}
