// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';

/// auto generated
class ClientApplicationStatus extends NonLinkable implements Parsable {
    ///  The active property
    bool? active;
    /// Instantiates a new [ClientApplicationStatus] and sets the default values.
    ClientApplicationStatus() : super() {
        type_ = 'client.ClientApplicationStatus';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ClientApplicationStatus createFromDiscriminatorValue(ParseNode parseNode) {
        return ClientApplicationStatus();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['active'] = (node) => active = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('active', value:active);
    }
}
