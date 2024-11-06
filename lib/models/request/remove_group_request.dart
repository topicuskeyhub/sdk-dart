import 'package:kiota_abstractions/kiota_abstractions.dart';
import './modification_request.dart';

class RemoveGroupRequest extends ModificationRequest implements Parsable {
    ///  The groupName property
    String? groupName;
    /// Instantiates a new [RemoveGroupRequest] and sets the default values.
    RemoveGroupRequest() : super() {
        typeEscaped = 'request.RemoveGroupRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static RemoveGroupRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return RemoveGroupRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['groupName'] = (node) => groupName = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('groupName', groupName);
    }
}
