// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../directory/account_directory_primer.dart';
import '../group/group_primer.dart';
import './access_profile_additional_objects.dart';
import './access_profile_primer.dart';

/// auto generated
class AccessProfile extends AccessProfilePrimer implements Parsable {
    ///  The additionalObjects property
    AccessProfileAdditionalObjects? additionalObjects;
    ///  The description property
    String? description;
    ///  The directory property
    AccountDirectoryPrimer? directory;
    ///  The owner property
    GroupPrimer? owner;
    /// Instantiates a new [AccessProfile] and sets the default values.
    AccessProfile() : super() {
        type_ = 'profile.AccessProfile';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccessProfile createFromDiscriminatorValue(ParseNode parseNode) {
        return AccessProfile();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<AccessProfileAdditionalObjects>(AccessProfileAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['directory'] = (node) => directory = node.getObjectValue<AccountDirectoryPrimer>(AccountDirectoryPrimer.createFromDiscriminatorValue);
        deserializerMap['owner'] = (node) => owner = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccessProfileAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeStringValue('description', description);
        writer.writeObjectValue<AccountDirectoryPrimer>('directory', directory);
        writer.writeObjectValue<GroupPrimer>('owner', owner);
    }
}
