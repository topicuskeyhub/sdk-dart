// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../group/group_primer.dart';
import './account_directory.dart';

/// auto generated
class InternalDirectory extends AccountDirectory implements Parsable {
    ///  The owner property
    GroupPrimer? owner;
    /// Instantiates a new [InternalDirectory] and sets the default values.
    InternalDirectory() : super() {
        type_ = 'directory.InternalDirectory';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static InternalDirectory createFromDiscriminatorValue(ParseNode parseNode) {
        return InternalDirectory();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['owner'] = (node) => owner = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<GroupPrimer>('owner', owner);
    }
}
