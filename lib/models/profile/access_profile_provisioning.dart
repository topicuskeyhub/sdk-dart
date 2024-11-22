// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import '../provisioning/group_on_system.dart';
import './access_profile_primer.dart';
import './access_profile_provisioning_additional_objects.dart';

/// auto generated
class AccessProfileProvisioning extends Linkable implements Parsable {
    ///  The accessProfile property
    AccessProfilePrimer? accessProfile;
    ///  The additionalObjects property
    AccessProfileProvisioningAdditionalObjects? additionalObjects;
    ///  The groupOnSystem property
    GroupOnSystem? groupOnSystem;
    /// Instantiates a new [AccessProfileProvisioning] and sets the default values.
    AccessProfileProvisioning() : super() {
        type_ = 'profile.AccessProfileProvisioning';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccessProfileProvisioning createFromDiscriminatorValue(ParseNode parseNode) {
        return AccessProfileProvisioning();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['accessProfile'] = (node) => accessProfile = node.getObjectValue<AccessProfilePrimer>(AccessProfilePrimer.createFromDiscriminatorValue);
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<AccessProfileProvisioningAdditionalObjects>(AccessProfileProvisioningAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['groupOnSystem'] = (node) => groupOnSystem = node.getObjectValue<GroupOnSystem>(GroupOnSystem.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccessProfilePrimer>('accessProfile', accessProfile);
        writer.writeObjectValue<AccessProfileProvisioningAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeObjectValue<GroupOnSystem>('groupOnSystem', groupOnSystem);
    }
}
