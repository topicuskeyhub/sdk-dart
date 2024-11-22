// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './notification.dart';

/// auto generated
class Notifications extends NonLinkable implements Parsable {
    ///  The items property
    Iterable<Notification>? items;
    /// Instantiates a new [Notifications] and sets the default values.
    Notifications() : super() {
        type_ = 'notification.Notifications';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static Notifications createFromDiscriminatorValue(ParseNode parseNode) {
        return Notifications();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<Notification>(Notification.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<Notification>('items', items);
    }
}
