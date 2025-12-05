// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';

/// auto generated
class ModificationRequestReportChangeDescription extends NonLinkable implements Parsable {
    ///  The isKey property
    bool? isKey;
    ///  The value property
    String? value;
    /// Instantiates a new [ModificationRequestReportChangeDescription] and sets the default values.
    ModificationRequestReportChangeDescription() : super() {
        type_ = 'request.ModificationRequestReportChangeDescription';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ModificationRequestReportChangeDescription createFromDiscriminatorValue(ParseNode parseNode) {
        return ModificationRequestReportChangeDescription();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['isKey'] = (node) => isKey = node.getBoolValue();
        deserializerMap['value'] = (node) => value = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('isKey', value:isKey);
        writer.writeStringValue('value', value);
    }
}
