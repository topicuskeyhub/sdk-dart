// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './abstract_provisioned_system_modification_request.dart';

/// auto generated
class CreateProvisionedNamespaceRequest extends AbstractProvisionedSystemModificationRequest implements Parsable {
    ///  The namespaceName property
    String? namespaceName;
    /// Instantiates a new [CreateProvisionedNamespaceRequest] and sets the default values.
    CreateProvisionedNamespaceRequest() : super() {
        type_ = 'request.CreateProvisionedNamespaceRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static CreateProvisionedNamespaceRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return CreateProvisionedNamespaceRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['namespaceName'] = (node) => namespaceName = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('namespaceName', namespaceName);
    }
}
