import 'package:kiota_abstractions/kiota_abstractions.dart';
import './abstract_provisioned_system_modification_request.dart';

class CreateProvisionedNamespaceRequest extends AbstractProvisionedSystemModificationRequest implements Parsable {
    ///  The namespaceName property
    String? namespaceName;
    /// Instantiates a new [CreateProvisionedNamespaceRequest] and sets the default values.
    CreateProvisionedNamespaceRequest() : super() {
        typeEscaped = 'request.CreateProvisionedNamespaceRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static CreateProvisionedNamespaceRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return CreateProvisionedNamespaceRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['namespaceName'] = (node) => namespaceName = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('namespaceName', namespaceName);
    }
}
