// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import './group_classification.dart';

/// auto generated
class GroupClassificationPrimer extends Linkable implements Parsable {
    ///  The name property
    String? name;
    ///  The uuid property
    String? uuid;
    /// Instantiates a new [GroupClassificationPrimer] and sets the default values.
    GroupClassificationPrimer() : super() {
        type_ = 'group.GroupClassificationPrimer';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GroupClassificationPrimer createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'group.GroupClassification' => GroupClassification(),
            _ => GroupClassificationPrimer(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['uuid'] = (node) => uuid = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('name', name);
    }
}
