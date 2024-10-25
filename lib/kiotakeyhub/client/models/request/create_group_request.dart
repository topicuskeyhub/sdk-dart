import 'package:kiota_abstractions/kiota_abstractions.dart';
import './abstract_organizational_unit_modification_request.dart';

class CreateGroupRequest extends AbstractOrganizationalUnitModificationRequest implements Parsable {
    ///  The groupName property
    String? groupName;
    /// Instantiates a new [CreateGroupRequest] and sets the default values.
     CreateGroupRequest() : super() {
        typeEscaped = 'request.CreateGroupRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static CreateGroupRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return CreateGroupRequest();
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
