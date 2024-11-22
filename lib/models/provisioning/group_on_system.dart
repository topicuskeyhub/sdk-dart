// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../group/group_primer.dart';
import './group_on_system_additional_objects.dart';
import './group_on_system_primer.dart';
import './provisioned_system_primer.dart';

/// auto generated
class GroupOnSystem extends GroupOnSystemPrimer implements Parsable {
    ///  The additionalObjects property
    GroupOnSystemAdditionalObjects? additionalObjects;
    ///  The owner property
    GroupPrimer? owner;
    ///  The provisioningEnabled property
    bool? provisioningEnabled;
    ///  The system property
    ProvisionedSystemPrimer? system;
    /// Instantiates a new [GroupOnSystem] and sets the default values.
    GroupOnSystem() : super() {
        type_ = 'provisioning.GroupOnSystem';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GroupOnSystem createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupOnSystem();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<GroupOnSystemAdditionalObjects>(GroupOnSystemAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['owner'] = (node) => owner = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['provisioningEnabled'] = (node) => provisioningEnabled = node.getBoolValue();
        deserializerMap['system'] = (node) => system = node.getObjectValue<ProvisionedSystemPrimer>(ProvisionedSystemPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<GroupOnSystemAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeObjectValue<GroupPrimer>('owner', owner);
        writer.writeBoolValue('provisioningEnabled', value:provisioningEnabled);
        writer.writeObjectValue<ProvisionedSystemPrimer>('system', system);
    }
}
