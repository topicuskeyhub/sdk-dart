import 'package:kiota_abstractions/kiota_abstractions.dart';
import './webhook.dart';

class WebhookLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<Webhook>? items;
    /// Instantiates a new [WebhookLinkableWrapper] and sets the default values.
     WebhookLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static WebhookLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return WebhookLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<Webhook>(Webhook.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<Webhook>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
