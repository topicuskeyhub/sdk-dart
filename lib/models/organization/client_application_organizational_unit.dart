// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './organizational_unit_primer.dart';

/// auto generated
class ClientApplicationOrganizationalUnit extends OrganizationalUnitPrimer implements Parsable {
    /// Instantiates a new [ClientApplicationOrganizationalUnit] and sets the default values.
    ClientApplicationOrganizationalUnit() : super() {
        type_ = 'organization.ClientApplicationOrganizationalUnit';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ClientApplicationOrganizationalUnit createFromDiscriminatorValue(ParseNode parseNode) {
        return ClientApplicationOrganizationalUnit();
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
