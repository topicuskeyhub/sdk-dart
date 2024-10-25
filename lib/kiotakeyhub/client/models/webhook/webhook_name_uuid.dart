import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../linkable.dart';
import '../non_linkable.dart';

class WebhookNameUuid extends NonLinkable implements Parsable {
    ///  The name property
    String? name;
    ///  The object property
    Linkable? object;
    ///  The uuid property
    String? uuid;
    /// Instantiates a new [WebhookNameUuid] and sets the default values.
     WebhookNameUuid() : super() {
        typeEscaped = 'webhook.WebhookNameUuid';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static WebhookNameUuid createFromDiscriminatorValue(ParseNode parseNode) {
        return WebhookNameUuid();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['object'] = (node) => object = node.getObjectValue<Linkable>(Linkable.createFromDiscriminatorValue);
        deserializerMap['uuid'] = (node) => uuid = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('name', name);
        writer.writeObjectValue<Linkable>('object', object);
        writer.writeStringValue('uuid', uuid);
    }
}
