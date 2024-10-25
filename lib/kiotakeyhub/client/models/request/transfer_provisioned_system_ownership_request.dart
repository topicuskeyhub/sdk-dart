import 'package:kiota_abstractions/kiota_abstractions.dart';
import './abstract_provisioned_system_modification_request.dart';

class TransferProvisionedSystemOwnershipRequest extends AbstractProvisionedSystemModificationRequest implements Parsable {
    /// Instantiates a new [TransferProvisionedSystemOwnershipRequest] and sets the default values.
     TransferProvisionedSystemOwnershipRequest() : super() {
        typeEscaped = 'request.TransferProvisionedSystemOwnershipRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static TransferProvisionedSystemOwnershipRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return TransferProvisionedSystemOwnershipRequest();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
