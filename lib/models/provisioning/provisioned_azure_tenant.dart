// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './provisioned_system.dart';

/// auto generated
class ProvisionedAzureTenant extends ProvisionedSystem implements Parsable {
    ///  The clientId property
    String? clientId;
    ///  The clientSecret property
    String? clientSecret;
    ///  The idpDomain property
    String? idpDomain;
    ///  The tenant property
    String? tenant;
    /// Instantiates a new [ProvisionedAzureTenant] and sets the default values.
    ProvisionedAzureTenant() : super() {
        type_ = 'provisioning.ProvisionedAzureTenant';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisionedAzureTenant createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedAzureTenant();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['clientId'] = (node) => clientId = node.getStringValue();
        deserializerMap['clientSecret'] = (node) => clientSecret = node.getStringValue();
        deserializerMap['idpDomain'] = (node) => idpDomain = node.getStringValue();
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
        writer.writeStringValue('idpDomain', idpDomain);
        writer.writeStringValue('tenant', tenant);
    }
}
