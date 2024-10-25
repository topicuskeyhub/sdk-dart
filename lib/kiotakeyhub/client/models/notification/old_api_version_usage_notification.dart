import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../client/o_auth2_client.dart';
import './notification.dart';

class OldApiVersionUsageNotification extends Notification implements Parsable {
    ///  The apiVersion property
    int? apiVersion;
    ///  The client property
    OAuth2Client? client;
    /// Instantiates a new [OldApiVersionUsageNotification] and sets the default values.
     OldApiVersionUsageNotification() : super() {
        typeEscaped = 'notification.OldApiVersionUsageNotification';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static OldApiVersionUsageNotification createFromDiscriminatorValue(ParseNode parseNode) {
        return OldApiVersionUsageNotification();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['apiVersion'] = (node) => apiVersion = node.getIntValue();
        deserializerMap['client'] = (node) => client = node.getObjectValue<OAuth2Client>(OAuth2Client.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeIntValue('apiVersion', apiVersion);
        writer.writeObjectValue<OAuth2Client>('client', client);
    }
}
