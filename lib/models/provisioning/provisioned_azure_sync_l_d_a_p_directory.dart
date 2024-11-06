import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../directory/account_directory_primer.dart';
import './provisioned_system.dart';

class ProvisionedAzureSyncLDAPDirectory extends ProvisionedSystem implements Parsable {
    ///  The clientId property
    String? clientId;
    ///  The clientSecret property
    String? clientSecret;
    ///  The directory property
    AccountDirectoryPrimer? directory;
    ///  The tenant property
    String? tenant;
    /// Instantiates a new [ProvisionedAzureSyncLDAPDirectory] and sets the default values.
    ProvisionedAzureSyncLDAPDirectory() : super() {
        typeEscaped = 'provisioning.ProvisionedAzureSyncLDAPDirectory';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ProvisionedAzureSyncLDAPDirectory createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedAzureSyncLDAPDirectory();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['clientId'] = (node) => clientId = node.getStringValue();
        deserializerMap['clientSecret'] = (node) => clientSecret = node.getStringValue();
        deserializerMap['directory'] = (node) => directory = node.getObjectValue<AccountDirectoryPrimer>(AccountDirectoryPrimer.createFromDiscriminatorValue);
        deserializerMap['tenant'] = (node) => tenant = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('clientId', clientId);
        writer.writeStringValue('clientSecret', clientSecret);
        writer.writeObjectValue<AccountDirectoryPrimer>('directory', directory);
        writer.writeStringValue('tenant', tenant);
    }
}
