import 'package:kiota_abstractions/kiota_abstractions.dart';
import './abstract_organizational_unit_modification_request.dart';

class TransferOrganizationalUnitOwnershipRequest extends AbstractOrganizationalUnitModificationRequest implements Parsable {
    /// Instantiates a new [TransferOrganizationalUnitOwnershipRequest] and sets the default values.
     TransferOrganizationalUnitOwnershipRequest() : super() {
        typeEscaped = 'request.TransferOrganizationalUnitOwnershipRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static TransferOrganizationalUnitOwnershipRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return TransferOrganizationalUnitOwnershipRequest();
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
