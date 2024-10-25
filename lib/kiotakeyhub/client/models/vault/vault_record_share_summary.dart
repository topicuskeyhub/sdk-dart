import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './vault_record_share.dart';

class VaultRecordShareSummary extends NonLinkable implements Parsable {
    ///  The children property
    Iterable<VaultRecordShare>? children;
    ///  The parent property
    VaultRecordShare? parent;
    /// Instantiates a new [VaultRecordShareSummary] and sets the default values.
     VaultRecordShareSummary() : super() {
        typeEscaped = 'vault.VaultRecordShareSummary';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static VaultRecordShareSummary createFromDiscriminatorValue(ParseNode parseNode) {
        return VaultRecordShareSummary();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['children'] = (node) => children = node.getCollectionOfObjectValues<VaultRecordShare>(VaultRecordShare.createFromDiscriminatorValue);
        deserializerMap['parent'] = (node) => parent = node.getObjectValue<VaultRecordShare>(VaultRecordShare.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<VaultRecordShare>('children', children);
        writer.writeObjectValue<VaultRecordShare>('parent', parent);
    }
}
