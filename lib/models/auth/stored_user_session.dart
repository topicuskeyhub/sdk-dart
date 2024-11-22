// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';

/// auto generated
class StoredUserSession extends Linkable implements Parsable {
    ///  The ipAddress property
    String? ipAddress;
    ///  The lastUsed property
    DateTime? lastUsed;
    ///  The location property
    String? location;
    ///  The loginDate property
    DateTime? loginDate;
    ///  The sessionId property
    String? sessionId;
    ///  The userAgent property
    String? userAgent;
    ///  The username property
    String? username;
    /// Instantiates a new [StoredUserSession] and sets the default values.
    StoredUserSession() : super() {
        type_ = 'auth.StoredUserSession';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static StoredUserSession createFromDiscriminatorValue(ParseNode parseNode) {
        return StoredUserSession();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['ipAddress'] = (node) => ipAddress = node.getStringValue();
        deserializerMap['lastUsed'] = (node) => lastUsed = node.getDateTimeValue();
        deserializerMap['location'] = (node) => location = node.getStringValue();
        deserializerMap['loginDate'] = (node) => loginDate = node.getDateTimeValue();
        deserializerMap['sessionId'] = (node) => sessionId = node.getStringValue();
        deserializerMap['userAgent'] = (node) => userAgent = node.getStringValue();
        deserializerMap['username'] = (node) => username = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('ipAddress', ipAddress);
        writer.writeDateTimeValue('lastUsed', lastUsed);
        writer.writeStringValue('location', location);
        writer.writeDateTimeValue('loginDate', loginDate);
        writer.writeStringValue('sessionId', sessionId);
        writer.writeStringValue('userAgent', userAgent);
        writer.writeStringValue('username', username);
    }
}
