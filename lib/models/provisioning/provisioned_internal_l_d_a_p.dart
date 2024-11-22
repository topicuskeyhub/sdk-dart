// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../client/ldap_client.dart';
import './provisioned_system.dart';

/// auto generated
class ProvisionedInternalLDAP extends ProvisionedSystem implements Parsable {
    ///  The client property
    LdapClient? client;
    /// Instantiates a new [ProvisionedInternalLDAP] and sets the default values.
    ProvisionedInternalLDAP() : super() {
        type_ = 'provisioning.ProvisionedInternalLDAP';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisionedInternalLDAP createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedInternalLDAP();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['client'] = (node) => client = node.getObjectValue<LdapClient>(LdapClient.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<LdapClient>('client', client);
    }
}
