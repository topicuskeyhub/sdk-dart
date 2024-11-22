// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../group/group_primer.dart';
import '../non_linkable.dart';

/// auto generated
class DeletedVaultRecovery extends NonLinkable implements Parsable {
    ///  The prefix property
    String? prefix;
    ///  The privateKey property
    String? privateKey;
    ///  The targetGroup property
    GroupPrimer? targetGroup;
    /// Instantiates a new [DeletedVaultRecovery] and sets the default values.
    DeletedVaultRecovery() : super() {
        type_ = 'vault.DeletedVaultRecovery';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static DeletedVaultRecovery createFromDiscriminatorValue(ParseNode parseNode) {
        return DeletedVaultRecovery();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['prefix'] = (node) => prefix = node.getStringValue();
        deserializerMap['privateKey'] = (node) => privateKey = node.getStringValue();
        deserializerMap['targetGroup'] = (node) => targetGroup = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('prefix', prefix);
        writer.writeStringValue('privateKey', privateKey);
        writer.writeObjectValue<GroupPrimer>('targetGroup', targetGroup);
    }
}
