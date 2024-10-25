import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../directory/account_directory_primer.dart';
import './provisioned_system.dart';

class ProvisionedAzureOIDCDirectory extends ProvisionedSystem implements Parsable {
    ///  The directory property
    AccountDirectoryPrimer? directory;
    ///  The tenant property
    String? tenant;
    /// Instantiates a new [ProvisionedAzureOIDCDirectory] and sets the default values.
     ProvisionedAzureOIDCDirectory() : super() {
        typeEscaped = 'provisioning.ProvisionedAzureOIDCDirectory';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static ProvisionedAzureOIDCDirectory createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedAzureOIDCDirectory();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['directory'] = (node) => directory = node.getObjectValue<AccountDirectoryPrimer>(AccountDirectoryPrimer.createFromDiscriminatorValue);
        deserializerMap['tenant'] = (node) => tenant = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountDirectoryPrimer>('directory', directory);
        writer.writeStringValue('tenant', tenant);
    }
}
