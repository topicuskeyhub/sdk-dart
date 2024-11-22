// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './modification_request.dart';

/// auto generated
class PasswordResetRequest extends ModificationRequest implements Parsable {
    ///  The newVaultAndDirectoryPassword property
    String? newVaultAndDirectoryPassword;
    ///  The newVaultPassword property
    String? newVaultPassword;
    ///  The unsyncedPassword property
    bool? unsyncedPassword;
    /// Instantiates a new [PasswordResetRequest] and sets the default values.
    PasswordResetRequest() : super() {
        type_ = 'request.PasswordResetRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static PasswordResetRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return PasswordResetRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['newVaultAndDirectoryPassword'] = (node) => newVaultAndDirectoryPassword = node.getStringValue();
        deserializerMap['newVaultPassword'] = (node) => newVaultPassword = node.getStringValue();
        deserializerMap['unsyncedPassword'] = (node) => unsyncedPassword = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('newVaultAndDirectoryPassword', newVaultAndDirectoryPassword);
        writer.writeStringValue('newVaultPassword', newVaultPassword);
        writer.writeBoolValue('unsyncedPassword', value:unsyncedPassword);
    }
}
