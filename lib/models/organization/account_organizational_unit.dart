import 'package:kiota_abstractions/kiota_abstractions.dart';
import './account_organizational_unit_additional_objects.dart';
import './organizational_unit_primer.dart';

class AccountOrganizationalUnit extends OrganizationalUnitPrimer implements Parsable {
    ///  The additionalObjects property
    AccountOrganizationalUnitAdditionalObjects? additionalObjects;
    /// Instantiates a new [AccountOrganizationalUnit] and sets the default values.
     AccountOrganizationalUnit() : super() {
        typeEscaped = 'organization.AccountOrganizationalUnit';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static AccountOrganizationalUnit createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountOrganizationalUnit();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<AccountOrganizationalUnitAdditionalObjects>(AccountOrganizationalUnitAdditionalObjects.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountOrganizationalUnitAdditionalObjects>('additionalObjects', additionalObjects);
    }
}
