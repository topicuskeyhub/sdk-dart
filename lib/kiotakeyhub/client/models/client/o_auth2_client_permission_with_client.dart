import 'package:kiota_abstractions/kiota_abstractions.dart';
import './o_auth2_client.dart';
import './o_auth2_client_permission.dart';

class OAuth2ClientPermissionWithClient extends OAuth2ClientPermission implements Parsable {
    ///  The client property
    OAuth2Client? client;
    /// Instantiates a new [OAuth2ClientPermissionWithClient] and sets the default values.
     OAuth2ClientPermissionWithClient() : super() {
        typeEscaped = 'client.OAuth2ClientPermissionWithClient';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static OAuth2ClientPermissionWithClient createFromDiscriminatorValue(ParseNode parseNode) {
        return OAuth2ClientPermissionWithClient();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['client'] = (node) => client = node.getObjectValue<OAuth2Client>(OAuth2Client.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<OAuth2Client>('client', client);
    }
}
