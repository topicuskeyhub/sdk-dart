// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import './group_folder_additional_objects.dart';

/// auto generated
class GroupFolder extends Linkable implements Parsable {
    ///  The additionalObjects property
    GroupFolderAdditionalObjects? additionalObjects;
    ///  The name property
    String? name;
    /// Instantiates a new [GroupFolder] and sets the default values.
    GroupFolder() : super() {
        type_ = 'group.GroupFolder';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GroupFolder createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupFolder();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<GroupFolderAdditionalObjects>(GroupFolderAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['name'] = (node) => name = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<GroupFolderAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeStringValue('name', name);
    }
}
