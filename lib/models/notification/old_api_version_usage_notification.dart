// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../client/o_auth2_client.dart';
import './notification.dart';

/// auto generated
class OldApiVersionUsageNotification extends Notification implements Parsable {
    ///  The apiVersion property
    int? apiVersion;
    ///  The client property
    OAuth2Client? client;
    /// Instantiates a new [OldApiVersionUsageNotification] and sets the default values.
    OldApiVersionUsageNotification() : super() {
        type_ = 'notification.OldApiVersionUsageNotification';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static OldApiVersionUsageNotification createFromDiscriminatorValue(ParseNode parseNode) {
        return OldApiVersionUsageNotification();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['apiVersion'] = (node) => apiVersion = node.getIntValue();
        deserializerMap['client'] = (node) => client = node.getObjectValue<OAuth2Client>(OAuth2Client.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeIntValue('apiVersion', apiVersion);
        writer.writeObjectValue<OAuth2Client>('client', client);
    }
}
