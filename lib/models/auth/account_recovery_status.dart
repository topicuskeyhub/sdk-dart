// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';

/// auto generated
class AccountRecoveryStatus extends NonLinkable implements Parsable {
    ///  The pending2FARecoveryRequest property
    bool? pending2FARecoveryRequest;
    ///  The pendingPasswordRecoveryRequest property
    bool? pendingPasswordRecoveryRequest;
    /// Instantiates a new [AccountRecoveryStatus] and sets the default values.
    AccountRecoveryStatus() : super() {
        type_ = 'auth.AccountRecoveryStatus';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccountRecoveryStatus createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountRecoveryStatus();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['pending2FARecoveryRequest'] = (node) => pending2FARecoveryRequest = node.getBoolValue();
        deserializerMap['pendingPasswordRecoveryRequest'] = (node) => pendingPasswordRecoveryRequest = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('pending2FARecoveryRequest', value:pending2FARecoveryRequest);
        writer.writeBoolValue('pendingPasswordRecoveryRequest', value:pendingPasswordRecoveryRequest);
    }
}
