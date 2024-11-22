// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../directory/internal_directory.dart';
import '../non_linkable.dart';

/// auto generated
class MoveInternalAccount extends NonLinkable implements Parsable {
    ///  The internalDirectory property
    InternalDirectory? internalDirectory;
    /// Instantiates a new [MoveInternalAccount] and sets the default values.
    MoveInternalAccount() : super() {
        type_ = 'auth.MoveInternalAccount';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MoveInternalAccount createFromDiscriminatorValue(ParseNode parseNode) {
        return MoveInternalAccount();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['internalDirectory'] = (node) => internalDirectory = node.getObjectValue<InternalDirectory>(InternalDirectory.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<InternalDirectory>('internalDirectory', internalDirectory);
    }
}
