// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './vault_record_share.dart';

/// auto generated
class VaultRecordShareSummary extends NonLinkable implements Parsable {
    ///  The children property
    Iterable<VaultRecordShare>? children;
    ///  The parent property
    VaultRecordShare? parent;
    /// Instantiates a new [VaultRecordShareSummary] and sets the default values.
    VaultRecordShareSummary() : super() {
        type_ = 'vault.VaultRecordShareSummary';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static VaultRecordShareSummary createFromDiscriminatorValue(ParseNode parseNode) {
        return VaultRecordShareSummary();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['children'] = (node) => children = node.getCollectionOfObjectValues<VaultRecordShare>(VaultRecordShare.createFromDiscriminatorValue);
        deserializerMap['parent'] = (node) => parent = node.getObjectValue<VaultRecordShare>(VaultRecordShare.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<VaultRecordShare>('children', children);
        writer.writeObjectValue<VaultRecordShare>('parent', parent);
    }
}
