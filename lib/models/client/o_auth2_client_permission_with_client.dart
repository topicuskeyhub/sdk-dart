// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './o_auth2_client.dart';
import './o_auth2_client_permission.dart';

/// auto generated
class OAuth2ClientPermissionWithClient extends OAuth2ClientPermission implements Parsable {
    ///  The client property
    OAuth2Client? client;
    /// Instantiates a new [OAuth2ClientPermissionWithClient] and sets the default values.
    OAuth2ClientPermissionWithClient() : super() {
        type_ = 'client.OAuth2ClientPermissionWithClient';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static OAuth2ClientPermissionWithClient createFromDiscriminatorValue(ParseNode parseNode) {
        return OAuth2ClientPermissionWithClient();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['client'] = (node) => client = node.getObjectValue<OAuth2Client>(OAuth2Client.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<OAuth2Client>('client', client);
    }
}
