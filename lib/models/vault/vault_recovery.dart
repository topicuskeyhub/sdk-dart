// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../auth/account_primer.dart';
import '../non_linkable.dart';

/// auto generated
class VaultRecovery extends NonLinkable implements Parsable {
    ///  The account property
    AccountPrimer? account;
    ///  The privateKey property
    String? privateKey;
    /// Instantiates a new [VaultRecovery] and sets the default values.
    VaultRecovery() : super() {
        type_ = 'vault.VaultRecovery';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static VaultRecovery createFromDiscriminatorValue(ParseNode parseNode) {
        return VaultRecovery();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['account'] = (node) => account = node.getObjectValue<AccountPrimer>(AccountPrimer.createFromDiscriminatorValue);
        deserializerMap['privateKey'] = (node) => privateKey = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountPrimer>('account', account);
        writer.writeStringValue('privateKey', privateKey);
    }
}
