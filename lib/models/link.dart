// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class Link implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The href property
    String? href;
    ///  The id property
    int? id;
    ///  The rel property
    String? rel;
    ///  The type property
    String? type_;
    /// Instantiates a new [Link] and sets the default values.
    Link() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static Link createFromDiscriminatorValue(ParseNode parseNode) {
        return Link();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['href'] = (node) => href = node.getStringValue();
        deserializerMap['id'] = (node) => id = node.getIntValue();
        deserializerMap['rel'] = (node) => rel = node.getStringValue();
        deserializerMap['type'] = (node) => type_ = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('href', href);
        writer.writeIntValue('id', id);
        writer.writeStringValue('rel', rel);
        writer.writeStringValue('type', type_);
        writer.writeAdditionalData(additionalData);
    }
}
