import 'package:kiota_abstractions/kiota_abstractions.dart';
import './provisioned_system.dart';

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
        typeEscaped = 'provisioning.ProvisionedAzureTenant';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ProvisionedAzureTenant createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedAzureTenant();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['clientId'] = (node) => clientId = node.getStringValue();
        deserializerMap['clientSecret'] = (node) => clientSecret = node.getStringValue();
        deserializerMap['idpDomain'] = (node) => idpDomain = node.getStringValue();
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
        writer.writeStringValue('idpDomain', idpDomain);
        writer.writeStringValue('tenant', tenant);
    }
}
