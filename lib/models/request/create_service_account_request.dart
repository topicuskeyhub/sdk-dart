import 'package:kiota_abstractions/kiota_abstractions.dart';
import './abstract_provisioned_system_modification_request.dart';

class CreateServiceAccountRequest extends AbstractProvisionedSystemModificationRequest implements Parsable {
    ///  The username property
    String? username;
    /// Instantiates a new [CreateServiceAccountRequest] and sets the default values.
     CreateServiceAccountRequest() : super() {
        typeEscaped = 'request.CreateServiceAccountRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static CreateServiceAccountRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return CreateServiceAccountRequest();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['username'] = (node) => username = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('username', username);
    }
}
