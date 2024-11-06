import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../auth/account_primer.dart';
import '../non_linkable.dart';

class VaultRecovery extends NonLinkable implements Parsable {
    ///  The account property
    AccountPrimer? account;
    ///  The privateKey property
    String? privateKey;
    /// Instantiates a new [VaultRecovery] and sets the default values.
    VaultRecovery() : super() {
        typeEscaped = 'vault.VaultRecovery';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static VaultRecovery createFromDiscriminatorValue(ParseNode parseNode) {
        return VaultRecovery();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['account'] = (node) => account = node.getObjectValue<AccountPrimer>(AccountPrimer.createFromDiscriminatorValue);
        deserializerMap['privateKey'] = (node) => privateKey = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountPrimer>('account', account);
        writer.writeStringValue('privateKey', privateKey);
    }
}
