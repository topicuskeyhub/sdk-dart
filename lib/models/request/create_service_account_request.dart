// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './abstract_provisioned_system_modification_request.dart';

/// auto generated
class CreateServiceAccountRequest extends AbstractProvisionedSystemModificationRequest implements Parsable {
    ///  The username property
    String? username;
    /// Instantiates a new [CreateServiceAccountRequest] and sets the default values.
    CreateServiceAccountRequest() : super() {
        type_ = 'request.CreateServiceAccountRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static CreateServiceAccountRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return CreateServiceAccountRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['username'] = (node) => username = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('username', username);
    }
}
