// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './abstract_organizational_unit_modification_request.dart';

/// auto generated
class RemoveOrganizationalUnitRequest extends AbstractOrganizationalUnitModificationRequest implements Parsable {
    ///  The organizationalUnitName property
    String? organizationalUnitName;
    /// Instantiates a new [RemoveOrganizationalUnitRequest] and sets the default values.
    RemoveOrganizationalUnitRequest() : super() {
        type_ = 'request.RemoveOrganizationalUnitRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static RemoveOrganizationalUnitRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return RemoveOrganizationalUnitRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['organizationalUnitName'] = (node) => organizationalUnitName = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('organizationalUnitName', organizationalUnitName);
    }
}
