// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../group/group_primer.dart';
import '../non_linkable.dart';

/// auto generated
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
        type_ = 'organization.OrganizationalUnitSettings';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static OrganizationalUnitSettings createFromDiscriminatorValue(ParseNode parseNode) {
        return OrganizationalUnitSettings();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['createGroupApproveGroup'] = (node) => createGroupApproveGroup = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['createGroupPlaceholder'] = (node) => createGroupPlaceholder = node.getStringValue();
        deserializerMap['enableTechAdminApproveGroup'] = (node) => enableTechAdminApproveGroup = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['recoveryFallbackGroup'] = (node) => recoveryFallbackGroup = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['removeGroupApproveGroup'] = (node) => removeGroupApproveGroup = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
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
