// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import '../provisioning/group_on_system.dart';
import './group_primer.dart';
import './provisioning_group_additional_objects.dart';

/// auto generated
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
        type_ = 'group.ProvisioningGroup';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisioningGroup createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisioningGroup();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['activationRequired'] = (node) => activationRequired = node.getBoolValue();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<ProvisioningGroupAdditionalObjects>(ProvisioningGroupAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['group'] = (node) => group = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['groupOnSystem'] = (node) => groupOnSystem = node.getObjectValue<GroupOnSystem>(GroupOnSystem.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('activationRequired', value:activationRequired);
        writer.writeObjectValue<ProvisioningGroupAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeObjectValue<GroupPrimer>('group', group);
        writer.writeObjectValue<GroupOnSystem>('groupOnSystem', groupOnSystem);
    }
}
