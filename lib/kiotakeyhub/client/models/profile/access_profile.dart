import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../group/group_primer.dart';
import './access_profile_additional_objects.dart';
import './access_profile_primer.dart';

class AccessProfile extends AccessProfilePrimer implements Parsable {
    ///  The additionalObjects property
    AccessProfileAdditionalObjects? additionalObjects;
    ///  The description property
    String? description;
    ///  The owner property
    GroupPrimer? owner;
    /// Instantiates a new [AccessProfile] and sets the default values.
     AccessProfile() : super() {
        typeEscaped = 'profile.AccessProfile';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static AccessProfile createFromDiscriminatorValue(ParseNode parseNode) {
        return AccessProfile();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<AccessProfileAdditionalObjects>(AccessProfileAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['owner'] = (node) => owner = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccessProfileAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeStringValue('description', description);
        writer.writeObjectValue<GroupPrimer>('owner', owner);
    }
}
