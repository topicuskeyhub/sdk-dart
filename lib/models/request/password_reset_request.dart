import 'package:kiota_abstractions/kiota_abstractions.dart';
import './modification_request.dart';

class PasswordResetRequest extends ModificationRequest implements Parsable {
    ///  The newVaultAndDirectoryPassword property
    String? newVaultAndDirectoryPassword;
    ///  The newVaultPassword property
    String? newVaultPassword;
    ///  The unsyncedPassword property
    bool? unsyncedPassword;
    /// Instantiates a new [PasswordResetRequest] and sets the default values.
    PasswordResetRequest() : super() {
        typeEscaped = 'request.PasswordResetRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static PasswordResetRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return PasswordResetRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['newVaultAndDirectoryPassword'] = (node) => newVaultAndDirectoryPassword = node.getStringValue();
        deserializerMap['newVaultPassword'] = (node) => newVaultPassword = node.getStringValue();
        deserializerMap['unsyncedPassword'] = (node) => unsyncedPassword = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('newVaultAndDirectoryPassword', newVaultAndDirectoryPassword);
        writer.writeStringValue('newVaultPassword', newVaultPassword);
        writer.writeBoolValue('unsyncedPassword', value:unsyncedPassword);
    }
}
