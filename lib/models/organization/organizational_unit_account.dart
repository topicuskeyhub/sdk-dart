import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../auth/account_primer.dart';
import '../directory/account_directory_primer.dart';
import './organizational_unit_account_additional_objects.dart';

class OrganizationalUnitAccount extends AccountPrimer implements Parsable {
    ///  The additionalObjects property
    OrganizationalUnitAccountAdditionalObjects? additionalObjects;
    ///  The directory property
    AccountDirectoryPrimer? directory;
    /// Instantiates a new [OrganizationalUnitAccount] and sets the default values.
    OrganizationalUnitAccount() : super() {
        typeEscaped = 'organization.OrganizationalUnitAccount';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static OrganizationalUnitAccount createFromDiscriminatorValue(ParseNode parseNode) {
        return OrganizationalUnitAccount();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<OrganizationalUnitAccountAdditionalObjects>(OrganizationalUnitAccountAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['directory'] = (node) => directory = node.getObjectValue<AccountDirectoryPrimer>(AccountDirectoryPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<OrganizationalUnitAccountAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeObjectValue<AccountDirectoryPrimer>('directory', directory);
    }
}
