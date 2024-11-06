import 'package:kiota_abstractions/kiota_abstractions.dart';
import './abstract_organizational_unit_modification_request.dart';

class RemoveOrganizationalUnitRequest extends AbstractOrganizationalUnitModificationRequest implements Parsable {
    ///  The organizationalUnitName property
    String? organizationalUnitName;
    /// Instantiates a new [RemoveOrganizationalUnitRequest] and sets the default values.
    RemoveOrganizationalUnitRequest() : super() {
        typeEscaped = 'request.RemoveOrganizationalUnitRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static RemoveOrganizationalUnitRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return RemoveOrganizationalUnitRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['organizationalUnitName'] = (node) => organizationalUnitName = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('organizationalUnitName', organizationalUnitName);
    }
}
