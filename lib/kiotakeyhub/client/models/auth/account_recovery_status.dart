import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';

class AccountRecoveryStatus extends NonLinkable implements Parsable {
    ///  The pending2FARecoveryRequest property
    bool? pending2FARecoveryRequest;
    ///  The pendingPasswordRecoveryRequest property
    bool? pendingPasswordRecoveryRequest;
    /// Instantiates a new [AccountRecoveryStatus] and sets the default values.
     AccountRecoveryStatus() : super() {
        typeEscaped = 'auth.AccountRecoveryStatus';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static AccountRecoveryStatus createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountRecoveryStatus();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['pending2FARecoveryRequest'] = (node) => pending2FARecoveryRequest = node.getBoolValue();
        deserializerMap['pendingPasswordRecoveryRequest'] = (node) => pendingPasswordRecoveryRequest = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('pending2FARecoveryRequest', value:pending2FARecoveryRequest);
        writer.writeBoolValue('pendingPasswordRecoveryRequest', value:pendingPasswordRecoveryRequest);
    }
}
