import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../linkable.dart';
import './client_application.dart';
import './client_application_type.dart';
import './ldap_client.dart';
import './o_auth2_client.dart';
import './saml2_client.dart';

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
        typeEscaped = 'client.ClientApplicationPrimer';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ClientApplicationPrimer createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'client.ClientApplication' => ClientApplication(),
            'client.LdapClient' => LdapClient(),
            'client.OAuth2Client' => OAuth2Client(),
            'client.Saml2Client' => Saml2Client(),
            _ => ClientApplicationPrimer(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['type'] = (node) => clientApplicationPrimerType = node.getEnumValue<ClientApplicationType>((stringValue) => ClientApplicationType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['clientId'] = (node) => clientId = node.getStringValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['scopes'] = (node) => scopes = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['ssoApplication'] = (node) => ssoApplication = node.getBoolValue();
        deserializerMap['uuid'] = (node) => uuid = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<ClientApplicationType>('type', clientApplicationPrimerType, (e) => e?.value);
        writer.writeStringValue('clientId', clientId);
        writer.writeStringValue('name', name);
        writer.writeCollectionOfPrimitiveValues<String?>('scopes', scopes);
    }
}
