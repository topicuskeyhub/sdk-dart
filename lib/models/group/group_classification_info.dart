// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';

/// auto generated
class GroupClassificationInfo extends NonLinkable implements Parsable {
    ///  The nrGroups property
    int? nrGroups;
    /// Instantiates a new [GroupClassificationInfo] and sets the default values.
    GroupClassificationInfo() : super() {
        type_ = 'group.GroupClassificationInfo';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GroupClassificationInfo createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupClassificationInfo();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['nrGroups'] = (node) => nrGroups = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeIntValue('nrGroups', nrGroups);
    }
}
