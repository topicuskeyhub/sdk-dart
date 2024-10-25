import 'package:kiota_abstractions/kiota_abstractions.dart';
import './webhook_delivery.dart';

class WebhookDeliveryLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<WebhookDelivery>? items;
    /// Instantiates a new [WebhookDeliveryLinkableWrapper] and sets the default values.
     WebhookDeliveryLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static WebhookDeliveryLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return WebhookDeliveryLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<WebhookDelivery>(WebhookDelivery.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<WebhookDelivery>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
