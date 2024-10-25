import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../audit/audit_required_source_type.dart';
import '../group/group.dart';
import './notification.dart';

class GroupAuditRequiredNotification extends Notification implements Parsable {
    ///  The dueDate property
    DateTime? dueDate;
    ///  The group property
    Group? group;
    ///  The type property
    AuditRequiredSourceType? groupAuditRequiredNotificationType;
    /// Instantiates a new [GroupAuditRequiredNotification] and sets the default values.
     GroupAuditRequiredNotification() : super() {
        typeEscaped = 'notification.GroupAuditRequiredNotification';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static GroupAuditRequiredNotification createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupAuditRequiredNotification();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['dueDate'] = (node) => dueDate = node.getDateTimeValue();
        deserializerMap['group'] = (node) => group = node.getObjectValue<Group>(Group.createFromDiscriminatorValue);
        deserializerMap['type'] = (node) => groupAuditRequiredNotificationType = node.getEnumValue<AuditRequiredSourceType>((stringValue) => AuditRequiredSourceType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeDateTimeValue('dueDate', dueDate);
        writer.writeObjectValue<Group>('group', group);
        writer.writeEnumValue<AuditRequiredSourceType>('type', groupAuditRequiredNotificationType, (e) => e?.value);
    }
}
