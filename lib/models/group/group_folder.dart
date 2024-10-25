import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../linkable.dart';
import './group_folder_additional_objects.dart';

class GroupFolder extends Linkable implements Parsable {
    ///  The additionalObjects property
    GroupFolderAdditionalObjects? additionalObjects;
    ///  The name property
    String? name;
    /// Instantiates a new [GroupFolder] and sets the default values.
     GroupFolder() : super() {
        typeEscaped = 'group.GroupFolder';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static GroupFolder createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupFolder();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<GroupFolderAdditionalObjects>(GroupFolderAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['name'] = (node) => name = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<GroupFolderAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeStringValue('name', name);
    }
}
