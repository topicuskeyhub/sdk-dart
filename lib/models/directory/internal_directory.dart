import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../group/group_primer.dart';
import './account_directory.dart';

class InternalDirectory extends AccountDirectory implements Parsable {
    ///  The owner property
    GroupPrimer? owner;
    /// Instantiates a new [InternalDirectory] and sets the default values.
    InternalDirectory() : super() {
        typeEscaped = 'directory.InternalDirectory';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static InternalDirectory createFromDiscriminatorValue(ParseNode parseNode) {
        return InternalDirectory();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['owner'] = (node) => owner = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<GroupPrimer>('owner', owner);
    }
}
