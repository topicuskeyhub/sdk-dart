// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './abstract_provisioned_system_modification_request.dart';

/// auto generated
class TransferProvisionedSystemAdministrationRequest extends AbstractProvisionedSystemModificationRequest implements Parsable {
    /// Instantiates a new [TransferProvisionedSystemAdministrationRequest] and sets the default values.
    TransferProvisionedSystemAdministrationRequest() : super() {
        type_ = 'request.TransferProvisionedSystemAdministrationRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TransferProvisionedSystemAdministrationRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return TransferProvisionedSystemAdministrationRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
