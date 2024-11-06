import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './group_classification_primer.dart';

class GroupClassificationUpdate extends NonLinkable implements Parsable {
    ///  The classificaton property
    GroupClassificationPrimer? classificaton;
    /// Instantiates a new [GroupClassificationUpdate] and sets the default values.
    GroupClassificationUpdate() : super() {
        typeEscaped = 'group.GroupClassificationUpdate';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static GroupClassificationUpdate createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupClassificationUpdate();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['classificaton'] = (node) => classificaton = node.getObjectValue<GroupClassificationPrimer>(GroupClassificationPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<GroupClassificationPrimer>('classificaton', classificaton);
    }
}
