// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../group/group_primer.dart';
import './notification.dart';

/// auto generated
class RotatingPasswordRequiredNotification extends Notification implements Parsable {
    ///  The groups property
    Iterable<GroupPrimer>? groups;
    /// Instantiates a new [RotatingPasswordRequiredNotification] and sets the default values.
    RotatingPasswordRequiredNotification() : super() {
        type_ = 'notification.RotatingPasswordRequiredNotification';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static RotatingPasswordRequiredNotification createFromDiscriminatorValue(ParseNode parseNode) {
        return RotatingPasswordRequiredNotification();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['groups'] = (node) => groups = node.getCollectionOfObjectValues<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<GroupPrimer>('groups', groups);
    }
}
