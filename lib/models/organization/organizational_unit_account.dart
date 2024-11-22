// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../auth/account_primer.dart';
import '../directory/account_directory_primer.dart';
import './organizational_unit_account_additional_objects.dart';

/// auto generated
class OrganizationalUnitAccount extends AccountPrimer implements Parsable {
    ///  The additionalObjects property
    OrganizationalUnitAccountAdditionalObjects? additionalObjects;
    ///  The directory property
    AccountDirectoryPrimer? directory;
    /// Instantiates a new [OrganizationalUnitAccount] and sets the default values.
    OrganizationalUnitAccount() : super() {
        type_ = 'organization.OrganizationalUnitAccount';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static OrganizationalUnitAccount createFromDiscriminatorValue(ParseNode parseNode) {
        return OrganizationalUnitAccount();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<OrganizationalUnitAccountAdditionalObjects>(OrganizationalUnitAccountAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['directory'] = (node) => directory = node.getObjectValue<AccountDirectoryPrimer>(AccountDirectoryPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<OrganizationalUnitAccountAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeObjectValue<AccountDirectoryPrimer>('directory', directory);
    }
}
