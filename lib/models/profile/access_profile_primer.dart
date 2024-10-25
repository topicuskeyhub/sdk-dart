import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../linkable.dart';
import './access_profile.dart';

class AccessProfilePrimer extends Linkable implements Parsable {
    ///  The name property
    String? name;
    ///  The uuid property
    String? uuid;
    /// Instantiates a new [AccessProfilePrimer] and sets the default values.
     AccessProfilePrimer() : super() {
        typeEscaped = 'profile.AccessProfilePrimer';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static AccessProfilePrimer createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'profile.AccessProfile' => AccessProfile(),
            _ => AccessProfilePrimer(),
        };
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['uuid'] = (node) => uuid = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('name', name);
    }
}
