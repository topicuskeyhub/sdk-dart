// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './non_linkable.dart';

/// auto generated
class Secret extends NonLinkable implements Parsable {
    ///  The secret property
    String? secretProp;
    /// Instantiates a new [Secret] and sets the default values.
    Secret() : super() {
        type_ = 'Secret';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static Secret createFromDiscriminatorValue(ParseNode parseNode) {
        return Secret();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['secret'] = (node) => secretProp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
