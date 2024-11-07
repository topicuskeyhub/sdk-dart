import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../linkable.dart';
import '../provisioning/group_on_system.dart';
import './group_primer.dart';
import './provisioning_group_additional_objects.dart';

class ProvisioningGroup extends Linkable implements Parsable {
    ///  The activationRequired property
    bool? activationRequired;
    ///  The additionalObjects property
    ProvisioningGroupAdditionalObjects? additionalObjects;
    ///  The group property
    GroupPrimer? group;
    ///  The groupOnSystem property
    GroupOnSystem? groupOnSystem;
    /// Instantiates a new [ProvisioningGroup] and sets the default values.
    ProvisioningGroup() : super() {
        typeEscaped = 'group.ProvisioningGroup';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ProvisioningGroup createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisioningGroup();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['activationRequired'] = (node) => activationRequired = node.getBoolValue();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<ProvisioningGroupAdditionalObjects>(ProvisioningGroupAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['group'] = (node) => group = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['groupOnSystem'] = (node) => groupOnSystem = node.getObjectValue<GroupOnSystem>(GroupOnSystem.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('activationRequired', value:activationRequired);
        writer.writeObjectValue<ProvisioningGroupAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeObjectValue<GroupPrimer>('group', group);
        writer.writeObjectValue<GroupOnSystem>('groupOnSystem', groupOnSystem);
    }
}
