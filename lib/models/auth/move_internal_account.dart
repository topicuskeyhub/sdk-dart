import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../directory/internal_directory.dart';
import '../non_linkable.dart';

class MoveInternalAccount extends NonLinkable implements Parsable {
    ///  The internalDirectory property
    InternalDirectory? internalDirectory;
    /// Instantiates a new [MoveInternalAccount] and sets the default values.
    MoveInternalAccount() : super() {
        typeEscaped = 'auth.MoveInternalAccount';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static MoveInternalAccount createFromDiscriminatorValue(ParseNode parseNode) {
        return MoveInternalAccount();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['internalDirectory'] = (node) => internalDirectory = node.getObjectValue<InternalDirectory>(InternalDirectory.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<InternalDirectory>('internalDirectory', internalDirectory);
    }
}
