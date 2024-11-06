import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './notification.dart';

class Notifications extends NonLinkable implements Parsable {
    ///  The items property
    Iterable<Notification>? items;
    /// Instantiates a new [Notifications] and sets the default values.
    Notifications() : super() {
        typeEscaped = 'notification.Notifications';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static Notifications createFromDiscriminatorValue(ParseNode parseNode) {
        return Notifications();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<Notification>(Notification.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<Notification>('items', items);
    }
}
