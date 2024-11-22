// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../group/group.dart';
import '../group/group_edit_required_reason.dart';
import './group_edit_required_notification_parameters.dart';
import './notification.dart';

/// auto generated
class GroupEditRequiredNotification extends Notification implements Parsable {
    ///  The group property
    Group? group;
    ///  The parameters property
    GroupEditRequiredNotificationParameters? parameters;
    ///  The reason property
    GroupEditRequiredReason? reason;
    /// Instantiates a new [GroupEditRequiredNotification] and sets the default values.
    GroupEditRequiredNotification() : super() {
        type_ = 'notification.GroupEditRequiredNotification';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GroupEditRequiredNotification createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupEditRequiredNotification();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['group'] = (node) => group = node.getObjectValue<Group>(Group.createFromDiscriminatorValue);
        deserializerMap['parameters'] = (node) => parameters = node.getObjectValue<GroupEditRequiredNotificationParameters>(GroupEditRequiredNotificationParameters.createFromDiscriminatorValue);
        deserializerMap['reason'] = (node) => reason = node.getEnumValue<GroupEditRequiredReason>((stringValue) => GroupEditRequiredReason.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<Group>('group', group);
        writer.writeObjectValue<GroupEditRequiredNotificationParameters>('parameters', parameters);
        writer.writeEnumValue<GroupEditRequiredReason>('reason', reason, (e) => e?.value);
    }
}
