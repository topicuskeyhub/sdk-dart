import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../directory/account_directory_primer.dart';
import './provisioned_system.dart';

class ProvisionedLDAPDirectory extends ProvisionedSystem implements Parsable {
    ///  The directory property
    AccountDirectoryPrimer? directory;
    ///  The groupDN property
    String? groupDN;
    /// Instantiates a new [ProvisionedLDAPDirectory] and sets the default values.
     ProvisionedLDAPDirectory() : super() {
        typeEscaped = 'provisioning.ProvisionedLDAPDirectory';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static ProvisionedLDAPDirectory createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedLDAPDirectory();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['directory'] = (node) => directory = node.getObjectValue<AccountDirectoryPrimer>(AccountDirectoryPrimer.createFromDiscriminatorValue);
        deserializerMap['groupDN'] = (node) => groupDN = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountDirectoryPrimer>('directory', directory);
        writer.writeStringValue('groupDN', groupDN);
    }
}
