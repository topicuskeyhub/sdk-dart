import 'package:kiota_abstractions/kiota_abstractions.dart';
import './abstract_provisioned_system_modification_request.dart';

class RemoveProvisionedSystemRequest extends AbstractProvisionedSystemModificationRequest implements Parsable {
    ///  The systemName property
    String? systemName;
    /// Instantiates a new [RemoveProvisionedSystemRequest] and sets the default values.
     RemoveProvisionedSystemRequest() : super() {
        typeEscaped = 'request.RemoveProvisionedSystemRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static RemoveProvisionedSystemRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return RemoveProvisionedSystemRequest();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['systemName'] = (node) => systemName = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('systemName', systemName);
    }
}
