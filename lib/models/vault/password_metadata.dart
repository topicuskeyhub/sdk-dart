// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';

/// auto generated
class PasswordMetadata extends NonLinkable implements Parsable {
    ///  The dictionary property
    bool? dictionary;
    ///  The duplicate property
    bool? duplicate;
    ///  The hash property
    String? hash;
    ///  The length property
    int? length;
    ///  The lowerCount property
    int? lowerCount;
    ///  The numberCount property
    int? numberCount;
    ///  The specialCount property
    int? specialCount;
    ///  The strength property
    int? strength;
    ///  The upperCount property
    int? upperCount;
    /// Instantiates a new [PasswordMetadata] and sets the default values.
    PasswordMetadata() : super() {
        type_ = 'vault.PasswordMetadata';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static PasswordMetadata createFromDiscriminatorValue(ParseNode parseNode) {
        return PasswordMetadata();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['dictionary'] = (node) => dictionary = node.getBoolValue();
        deserializerMap['duplicate'] = (node) => duplicate = node.getBoolValue();
        deserializerMap['hash'] = (node) => hash = node.getStringValue();
        deserializerMap['length'] = (node) => length = node.getIntValue();
        deserializerMap['lowerCount'] = (node) => lowerCount = node.getIntValue();
        deserializerMap['numberCount'] = (node) => numberCount = node.getIntValue();
        deserializerMap['specialCount'] = (node) => specialCount = node.getIntValue();
        deserializerMap['strength'] = (node) => strength = node.getIntValue();
        deserializerMap['upperCount'] = (node) => upperCount = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
