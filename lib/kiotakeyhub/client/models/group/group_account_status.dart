import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './group_folder.dart';

class GroupAccountStatus extends NonLinkable implements Parsable {
    ///  The folder property
    GroupFolder? folder;
    ///  The visibleForProvisioning property
    bool? visibleForProvisioning;
    /// Instantiates a new [GroupAccountStatus] and sets the default values.
     GroupAccountStatus() : super() {
        typeEscaped = 'group.GroupAccountStatus';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static GroupAccountStatus createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupAccountStatus();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['folder'] = (node) => folder = node.getObjectValue<GroupFolder>(GroupFolder.createFromDiscriminatorValue);
        deserializerMap['visibleForProvisioning'] = (node) => visibleForProvisioning = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<GroupFolder>('folder', folder);
        writer.writeBoolValue('visibleForProvisioning', value:visibleForProvisioning);
    }
}
