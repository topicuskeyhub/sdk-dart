// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './vault_holder_type.dart';

/// auto generated
class VaultRecordShare extends NonLinkable implements Parsable {
    ///  The name property
    String? name;
    ///  The type property
    VaultHolderType? vaultRecordShareType;
    /// Instantiates a new [VaultRecordShare] and sets the default values.
    VaultRecordShare() : super() {
        type_ = 'vault.VaultRecordShare';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static VaultRecordShare createFromDiscriminatorValue(ParseNode parseNode) {
        return VaultRecordShare();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['VaultRecordShareType'] = (node) => vaultRecordShareType = node.getEnumValue<VaultHolderType>((stringValue) => VaultHolderType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('name', name);
        writer.writeEnumValue<VaultHolderType>('VaultRecordShareType', vaultRecordShareType, (e) => e?.value);
    }
}
