// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../audit/audit_required_source_type.dart';
import '../group/group.dart';
import './notification.dart';

/// auto generated
class GroupAuditRequiredNotification extends Notification implements Parsable {
    ///  The dueDate property
    DateTime? dueDate;
    ///  The group property
    Group? group;
    ///  The type property
    AuditRequiredSourceType? groupAuditRequiredNotificationType;
    /// Instantiates a new [GroupAuditRequiredNotification] and sets the default values.
    GroupAuditRequiredNotification() : super() {
        type_ = 'notification.GroupAuditRequiredNotification';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GroupAuditRequiredNotification createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupAuditRequiredNotification();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['dueDate'] = (node) => dueDate = node.getDateTimeValue();
        deserializerMap['group'] = (node) => group = node.getObjectValue<Group>(Group.createFromDiscriminatorValue);
        deserializerMap['GroupAuditRequiredNotificationType'] = (node) => groupAuditRequiredNotificationType = node.getEnumValue<AuditRequiredSourceType>((stringValue) => AuditRequiredSourceType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeDateTimeValue('dueDate', dueDate);
        writer.writeObjectValue<Group>('group', group);
        writer.writeEnumValue<AuditRequiredSourceType>('GroupAuditRequiredNotificationType', groupAuditRequiredNotificationType, (e) => e?.value);
    }
}
