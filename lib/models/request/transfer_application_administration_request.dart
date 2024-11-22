// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './abstract_application_modification_request.dart';

/// auto generated
class TransferApplicationAdministrationRequest extends AbstractApplicationModificationRequest implements Parsable {
    /// Instantiates a new [TransferApplicationAdministrationRequest] and sets the default values.
    TransferApplicationAdministrationRequest() : super() {
        type_ = 'request.TransferApplicationAdministrationRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TransferApplicationAdministrationRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return TransferApplicationAdministrationRequest();
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
