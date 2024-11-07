import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../linkable.dart';
import './deleted_vault_holder_additional_objects.dart';
import './vault_holder_type.dart';

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
        typeEscaped = 'vault.DeletedVaultHolder';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static DeletedVaultHolder createFromDiscriminatorValue(ParseNode parseNode) {
        return DeletedVaultHolder();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<DeletedVaultHolderAdditionalObjects>(DeletedVaultHolderAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['type'] = (node) => deletedVaultHolderType = node.getEnumValue<VaultHolderType>((stringValue) => VaultHolderType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['recordCount'] = (node) => recordCount = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<DeletedVaultHolderAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeEnumValue<VaultHolderType>('type', deletedVaultHolderType, (e) => e?.value);
        writer.writeStringValue('name', name);
    }
}
