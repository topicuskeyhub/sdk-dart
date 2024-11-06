import 'package:kiota_abstractions/kiota_abstractions.dart';
import './abstract_provisioned_system_modification_request.dart';

class TransferProvisionedSystemContentAdministrationRequest extends AbstractProvisionedSystemModificationRequest implements Parsable {
    /// Instantiates a new [TransferProvisionedSystemContentAdministrationRequest] and sets the default values.
    TransferProvisionedSystemContentAdministrationRequest() : super() {
        typeEscaped = 'request.TransferProvisionedSystemContentAdministrationRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static TransferProvisionedSystemContentAdministrationRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return TransferProvisionedSystemContentAdministrationRequest();
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
