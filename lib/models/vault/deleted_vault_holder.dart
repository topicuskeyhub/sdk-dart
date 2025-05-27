// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import './deleted_vault_holder_additional_objects.dart';
import './vault_holder_type.dart';

/// auto generated
class DeletedVaultHolder extends Linkable implements Parsable {
    ///  The additionalObjects property
    DeletedVaultHolderAdditionalObjects? additionalObjects;
    ///  The type property
    VaultHolderType? deletedVaultHolderType;
    ///  The name property
    String? name;
    ///  The recordCount property
    int? recordCount;
    /// Instantiates a new [DeletedVaultHolder] and sets the default values.
    DeletedVaultHolder() : super() {
        type_ = 'vault.DeletedVaultHolder';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static DeletedVaultHolder createFromDiscriminatorValue(ParseNode parseNode) {
        return DeletedVaultHolder();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<DeletedVaultHolderAdditionalObjects>(DeletedVaultHolderAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['DeletedVaultHolderType'] = (node) => deletedVaultHolderType = node.getEnumValue<VaultHolderType>((stringValue) => VaultHolderType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['recordCount'] = (node) => recordCount = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<DeletedVaultHolderAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeEnumValue<VaultHolderType>('DeletedVaultHolderType', deletedVaultHolderType, (e) => e?.value);
        writer.writeStringValue('name', name);
    }
}
