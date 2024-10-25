import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './vault_holder_type.dart';

class VaultRecordShare extends NonLinkable implements Parsable {
    ///  The name property
    String? name;
    ///  The type property
    VaultHolderType? vaultRecordShareType;
    /// Instantiates a new [VaultRecordShare] and sets the default values.
     VaultRecordShare() : super() {
        typeEscaped = 'vault.VaultRecordShare';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static VaultRecordShare createFromDiscriminatorValue(ParseNode parseNode) {
        return VaultRecordShare();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['type'] = (node) => vaultRecordShareType = node.getEnumValue<VaultHolderType>((stringValue) => VaultHolderType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('name', name);
        writer.writeEnumValue<VaultHolderType>('type', vaultRecordShareType, (e) => e?.value);
    }
}
