import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../directory/account_directory_primer.dart';
import '../group/group_primer.dart';
import './access_profile_additional_objects.dart';
import './access_profile_attribute_rules.dart';
import './access_profile_primer.dart';

class AccessProfile extends AccessProfilePrimer implements Parsable {
    ///  The additionalObjects property
    AccessProfileAdditionalObjects? additionalObjects;
    ///  The attributeRules property
    AccessProfileAttributeRules? attributeRules;
    ///  The description property
    String? description;
    ///  The directory property
    AccountDirectoryPrimer? directory;
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
        deserializerMap['attributeRules'] = (node) => attributeRules = node.getObjectValue<AccessProfileAttributeRules>(AccessProfileAttributeRules.createFromDiscriminatorValue);
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['directory'] = (node) => directory = node.getObjectValue<AccountDirectoryPrimer>(AccountDirectoryPrimer.createFromDiscriminatorValue);
        deserializerMap['owner'] = (node) => owner = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccessProfileAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeObjectValue<AccessProfileAttributeRules>('attributeRules', attributeRules);
        writer.writeStringValue('description', description);
        writer.writeObjectValue<AccountDirectoryPrimer>('directory', directory);
        writer.writeObjectValue<GroupPrimer>('owner', owner);
    }
}
