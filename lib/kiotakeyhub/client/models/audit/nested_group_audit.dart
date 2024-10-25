import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../linkable.dart';
import './audit_nested_group_action.dart';

class NestedGroupAudit extends Linkable implements Parsable {
    ///  The action property
    AuditNestedGroupAction? action;
    ///  The comment property
    String? comment;
    ///  The groupUuid property
    String? groupUuid;
    ///  The name property
    String? name;
    /// Instantiates a new [NestedGroupAudit] and sets the default values.
     NestedGroupAudit() : super() {
        typeEscaped = 'audit.NestedGroupAudit';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static NestedGroupAudit createFromDiscriminatorValue(ParseNode parseNode) {
        return NestedGroupAudit();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['action'] = (node) => action = node.getEnumValue<AuditNestedGroupAction>((stringValue) => AuditNestedGroupAction.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['comment'] = (node) => comment = node.getStringValue();
        deserializerMap['groupUuid'] = (node) => groupUuid = node.getStringValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<AuditNestedGroupAction>('action', action, (e) => e?.value);
        writer.writeStringValue('comment', comment);
        writer.writeStringValue('groupUuid', groupUuid);
    }
}
