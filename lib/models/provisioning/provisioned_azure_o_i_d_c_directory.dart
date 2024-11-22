// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../directory/account_directory_primer.dart';
import './provisioned_system.dart';

/// auto generated
class ProvisionedAzureOIDCDirectory extends ProvisionedSystem implements Parsable {
    ///  The accountsWritable property
    bool? accountsWritable;
    ///  The directory property
    AccountDirectoryPrimer? directory;
    ///  The tenant property
    String? tenant;
    /// Instantiates a new [ProvisionedAzureOIDCDirectory] and sets the default values.
    ProvisionedAzureOIDCDirectory() : super() {
        type_ = 'provisioning.ProvisionedAzureOIDCDirectory';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisionedAzureOIDCDirectory createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedAzureOIDCDirectory();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['accountsWritable'] = (node) => accountsWritable = node.getBoolValue();
        deserializerMap['directory'] = (node) => directory = node.getObjectValue<AccountDirectoryPrimer>(AccountDirectoryPrimer.createFromDiscriminatorValue);
        deserializerMap['tenant'] = (node) => tenant = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('accountsWritable', value:accountsWritable);
        writer.writeObjectValue<AccountDirectoryPrimer>('directory', directory);
        writer.writeStringValue('tenant', tenant);
    }
}
