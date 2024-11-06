import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../group/group_primer.dart';
import './client_application_additional_objects.dart';
import './client_application_primer.dart';
import './ldap_client.dart';
import './o_auth2_client.dart';
import './saml2_client.dart';

class ClientApplication extends ClientApplicationPrimer implements Parsable {
    ///  The additionalObjects property
    ClientApplicationAdditionalObjects? additionalObjects;
    ///  The lastModifiedAt property
    DateTime? lastModifiedAt;
    ///  The owner property
    GroupPrimer? owner;
    ///  The technicalAdministrator property
    GroupPrimer? technicalAdministrator;
    /// Instantiates a new [ClientApplication] and sets the default values.
    ClientApplication() : super() {
        typeEscaped = 'client.ClientApplication';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ClientApplication createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'client.LdapClient' => LdapClient(),
            'client.OAuth2Client' => OAuth2Client(),
            'client.Saml2Client' => Saml2Client(),
            _ => ClientApplication(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<ClientApplicationAdditionalObjects>(ClientApplicationAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['lastModifiedAt'] = (node) => lastModifiedAt = node.getDateTimeValue();
        deserializerMap['owner'] = (node) => owner = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['technicalAdministrator'] = (node) => technicalAdministrator = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<ClientApplicationAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeObjectValue<GroupPrimer>('owner', owner);
        writer.writeObjectValue<GroupPrimer>('technicalAdministrator', technicalAdministrator);
    }
}
