// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './group_classification_primer.dart';

/// auto generated
class GroupClassificationUpdate extends NonLinkable implements Parsable {
    ///  The classificaton property
    GroupClassificationPrimer? classificaton;
    /// Instantiates a new [GroupClassificationUpdate] and sets the default values.
    GroupClassificationUpdate() : super() {
        type_ = 'group.GroupClassificationUpdate';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GroupClassificationUpdate createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupClassificationUpdate();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['classificaton'] = (node) => classificaton = node.getObjectValue<GroupClassificationPrimer>(GroupClassificationPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<GroupClassificationPrimer>('classificaton', classificaton);
    }
}
