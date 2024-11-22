// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './abstract_organizational_unit_modification_request.dart';

/// auto generated
class TransferOrganizationalUnitOwnershipRequest extends AbstractOrganizationalUnitModificationRequest implements Parsable {
    /// Instantiates a new [TransferOrganizationalUnitOwnershipRequest] and sets the default values.
    TransferOrganizationalUnitOwnershipRequest() : super() {
        type_ = 'request.TransferOrganizationalUnitOwnershipRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TransferOrganizationalUnitOwnershipRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return TransferOrganizationalUnitOwnershipRequest();
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
