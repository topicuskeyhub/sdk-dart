import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../linkable.dart';
import '../provisioning/group_on_system.dart';
import './access_profile_primer.dart';
import './access_profile_provisioning_additional_objects.dart';

class AccessProfileProvisioning extends Linkable implements Parsable {
    ///  The accessProfile property
    AccessProfilePrimer? accessProfile;
    ///  The additionalObjects property
    AccessProfileProvisioningAdditionalObjects? additionalObjects;
    ///  The groupOnSystem property
    GroupOnSystem? groupOnSystem;
    /// Instantiates a new [AccessProfileProvisioning] and sets the default values.
    AccessProfileProvisioning() : super() {
        typeEscaped = 'profile.AccessProfileProvisioning';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AccessProfileProvisioning createFromDiscriminatorValue(ParseNode parseNode) {
        return AccessProfileProvisioning();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['accessProfile'] = (node) => accessProfile = node.getObjectValue<AccessProfilePrimer>(AccessProfilePrimer.createFromDiscriminatorValue);
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<AccessProfileProvisioningAdditionalObjects>(AccessProfileProvisioningAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['groupOnSystem'] = (node) => groupOnSystem = node.getObjectValue<GroupOnSystem>(GroupOnSystem.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccessProfilePrimer>('accessProfile', accessProfile);
        writer.writeObjectValue<AccessProfileProvisioningAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeObjectValue<GroupOnSystem>('groupOnSystem', groupOnSystem);
    }
}
