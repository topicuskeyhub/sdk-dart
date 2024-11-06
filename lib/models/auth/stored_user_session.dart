import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../linkable.dart';

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
        typeEscaped = 'auth.StoredUserSession';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static StoredUserSession createFromDiscriminatorValue(ParseNode parseNode) {
        return StoredUserSession();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
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
    /// <param name="writer">writer</param>
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
