// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import '../organization/organizational_unit_client_application.dart';
import './client_application.dart';
import './client_application_type.dart';
import './ldap_client.dart';
import './o_auth2_client.dart';
import './saml2_client.dart';

/// auto generated
class ClientApplicationPrimer extends Linkable implements Parsable {
    ///  The type property
    ClientApplicationType? clientApplicationPrimerType;
    ///  The clientId property
    String? clientId;
    ///  The name property
    String? name;
    ///  The scopes property
    Iterable<String>? scopes;
    ///  The ssoApplication property
    bool? ssoApplication;
    ///  The uuid property
    String? uuid;
    /// Instantiates a new [ClientApplicationPrimer] and sets the default values.
    ClientApplicationPrimer() : super() {
        type_ = 'client.ClientApplicationPrimer';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ClientApplicationPrimer createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'client.ClientApplication' => ClientApplication(),
            'client.LdapClient' => LdapClient(),
            'client.OAuth2Client' => OAuth2Client(),
            'client.Saml2Client' => Saml2Client(),
            'organization.OrganizationalUnitClientApplication' => OrganizationalUnitClientApplication(),
            _ => ClientApplicationPrimer(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['ClientApplicationPrimerType'] = (node) => clientApplicationPrimerType = node.getEnumValue<ClientApplicationType>((stringValue) => ClientApplicationType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['clientId'] = (node) => clientId = node.getStringValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['scopes'] = (node) => scopes = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['ssoApplication'] = (node) => ssoApplication = node.getBoolValue();
        deserializerMap['uuid'] = (node) => uuid = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<ClientApplicationType>('ClientApplicationPrimerType', clientApplicationPrimerType, (e) => e?.value);
        writer.writeStringValue('clientId', clientId);
        writer.writeStringValue('name', name);
        writer.writeCollectionOfPrimitiveValues<String?>('scopes', scopes);
    }
}
