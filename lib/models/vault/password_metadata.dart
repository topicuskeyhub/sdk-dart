import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';

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
        typeEscaped = 'vault.PasswordMetadata';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static PasswordMetadata createFromDiscriminatorValue(ParseNode parseNode) {
        return PasswordMetadata();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
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
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
