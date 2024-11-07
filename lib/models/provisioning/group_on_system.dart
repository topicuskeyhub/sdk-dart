import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../group/group_primer.dart';
import './group_on_system_additional_objects.dart';
import './group_on_system_primer.dart';
import './provisioned_system_primer.dart';

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
        typeEscaped = 'provisioning.GroupOnSystem';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static GroupOnSystem createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupOnSystem();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<GroupOnSystemAdditionalObjects>(GroupOnSystemAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['owner'] = (node) => owner = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['provisioningEnabled'] = (node) => provisioningEnabled = node.getBoolValue();
        deserializerMap['system'] = (node) => system = node.getObjectValue<ProvisionedSystemPrimer>(ProvisionedSystemPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<GroupOnSystemAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeObjectValue<GroupPrimer>('owner', owner);
        writer.writeBoolValue('provisioningEnabled', value:provisioningEnabled);
        writer.writeObjectValue<ProvisionedSystemPrimer>('system', system);
    }
}
