import 'package:kiota_abstractions/kiota_abstractions.dart';

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
    String? typeEscaped;
    /// Instantiates a new [Link] and sets the default values.
    Link() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static Link createFromDiscriminatorValue(ParseNode parseNode) {
        return Link();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['href'] = (node) => href = node.getStringValue();
        deserializerMap['id'] = (node) => id = node.getIntValue();
        deserializerMap['rel'] = (node) => rel = node.getStringValue();
        deserializerMap['type'] = (node) => typeEscaped = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('href', href);
        writer.writeIntValue('id', id);
        writer.writeStringValue('rel', rel);
        writer.writeStringValue('type', typeEscaped);
        writer.writeAdditionalData(additionalData);
    }
}
