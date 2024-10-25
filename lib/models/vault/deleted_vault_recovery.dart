import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../group/group_primer.dart';
import '../non_linkable.dart';

class DeletedVaultRecovery extends NonLinkable implements Parsable {
    ///  The prefix property
    String? prefix;
    ///  The privateKey property
    String? privateKey;
    ///  The targetGroup property
    GroupPrimer? targetGroup;
    /// Instantiates a new [DeletedVaultRecovery] and sets the default values.
     DeletedVaultRecovery() : super() {
        typeEscaped = 'vault.DeletedVaultRecovery';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static DeletedVaultRecovery createFromDiscriminatorValue(ParseNode parseNode) {
        return DeletedVaultRecovery();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['prefix'] = (node) => prefix = node.getStringValue();
        deserializerMap['privateKey'] = (node) => privateKey = node.getStringValue();
        deserializerMap['targetGroup'] = (node) => targetGroup = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('prefix', prefix);
        writer.writeStringValue('privateKey', privateKey);
        writer.writeObjectValue<GroupPrimer>('targetGroup', targetGroup);
    }
}
