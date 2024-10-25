import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../client/ldap_client.dart';
import './provisioned_system.dart';

class ProvisionedInternalLDAP extends ProvisionedSystem implements Parsable {
    ///  The client property
    LdapClient? client;
    /// Instantiates a new [ProvisionedInternalLDAP] and sets the default values.
     ProvisionedInternalLDAP() : super() {
        typeEscaped = 'provisioning.ProvisionedInternalLDAP';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static ProvisionedInternalLDAP createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedInternalLDAP();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['client'] = (node) => client = node.getObjectValue<LdapClient>(LdapClient.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<LdapClient>('client', client);
    }
}
