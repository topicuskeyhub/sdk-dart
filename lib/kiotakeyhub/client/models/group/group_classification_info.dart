import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';

class GroupClassificationInfo extends NonLinkable implements Parsable {
    ///  The nrGroups property
    int? nrGroups;
    /// Instantiates a new [GroupClassificationInfo] and sets the default values.
     GroupClassificationInfo() : super() {
        typeEscaped = 'group.GroupClassificationInfo';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static GroupClassificationInfo createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupClassificationInfo();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['nrGroups'] = (node) => nrGroups = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeIntValue('nrGroups', nrGroups);
    }
}
