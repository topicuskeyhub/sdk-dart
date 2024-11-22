// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_organizational_unit_additional_objects.dart';
import './organizational_unit_primer.dart';

/// auto generated
class AccountOrganizationalUnit extends OrganizationalUnitPrimer implements Parsable {
    ///  The additionalObjects property
    AccountOrganizationalUnitAdditionalObjects? additionalObjects;
    /// Instantiates a new [AccountOrganizationalUnit] and sets the default values.
    AccountOrganizationalUnit() : super() {
        type_ = 'organization.AccountOrganizationalUnit';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccountOrganizationalUnit createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountOrganizationalUnit();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<AccountOrganizationalUnitAdditionalObjects>(AccountOrganizationalUnitAdditionalObjects.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountOrganizationalUnitAdditionalObjects>('additionalObjects', additionalObjects);
    }
}
