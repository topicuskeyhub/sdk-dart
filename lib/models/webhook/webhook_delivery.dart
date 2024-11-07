import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../linkable.dart';
import './webhook_delivery_additional_objects.dart';
import './webhook_push.dart';

class WebhookDelivery extends Linkable implements Parsable {
    ///  The additionalObjects property
    WebhookDeliveryAdditionalObjects? additionalObjects;
    ///  The payload property
    WebhookPush? payload;
    ///  The reponseHeaders property
    String? reponseHeaders;
    ///  The requestHeaders property
    String? requestHeaders;
    ///  The response property
    String? response;
    ///  The status property
    int? status;
    ///  The time property
    int? time;
    ///  The triggerTime property
    DateTime? triggerTime;
    /// Instantiates a new [WebhookDelivery] and sets the default values.
    WebhookDelivery() : super() {
        typeEscaped = 'webhook.WebhookDelivery';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static WebhookDelivery createFromDiscriminatorValue(ParseNode parseNode) {
        return WebhookDelivery();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<WebhookDeliveryAdditionalObjects>(WebhookDeliveryAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['payload'] = (node) => payload = node.getObjectValue<WebhookPush>(WebhookPush.createFromDiscriminatorValue);
        deserializerMap['reponseHeaders'] = (node) => reponseHeaders = node.getStringValue();
        deserializerMap['requestHeaders'] = (node) => requestHeaders = node.getStringValue();
        deserializerMap['response'] = (node) => response = node.getStringValue();
        deserializerMap['status'] = (node) => status = node.getIntValue();
        deserializerMap['time'] = (node) => time = node.getIntValue();
        deserializerMap['triggerTime'] = (node) => triggerTime = node.getDateTimeValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<WebhookDeliveryAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeObjectValue<WebhookPush>('payload', payload);
        writer.writeStringValue('reponseHeaders', reponseHeaders);
        writer.writeStringValue('requestHeaders', requestHeaders);
        writer.writeStringValue('response', response);
        writer.writeIntValue('status', status);
        writer.writeIntValue('time', time);
        writer.writeDateTimeValue('triggerTime', triggerTime);
    }
}
