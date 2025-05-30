// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../directory/account_directory_primer.dart';
import './provisioned_system.dart';

/// auto generated
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
        type_ = 'provisioning.ProvisionedAzureSyncLDAPDirectory';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisionedAzureSyncLDAPDirectory createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedAzureSyncLDAPDirectory();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['clientId'] = (node) => clientId = node.getStringValue();
        deserializerMap['clientSecret'] = (node) => clientSecret = node.getStringValue();
        deserializerMap['directory'] = (node) => directory = node.getObjectValue<AccountDirectoryPrimer>(AccountDirectoryPrimer.createFromDiscriminatorValue);
        deserializerMap['tenant'] = (node) => tenant = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('clientId', clientId);
        writer.writeStringValue('clientSecret', clientSecret);
        writer.writeObjectValue<AccountDirectoryPrimer>('directory', directory);
        writer.writeStringValue('tenant', tenant);
    }
}
