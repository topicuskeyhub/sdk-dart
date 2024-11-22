// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import './audit_nested_group_action.dart';

/// auto generated
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
        type_ = 'audit.NestedGroupAudit';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static NestedGroupAudit createFromDiscriminatorValue(ParseNode parseNode) {
        return NestedGroupAudit();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['action'] = (node) => action = node.getEnumValue<AuditNestedGroupAction>((stringValue) => AuditNestedGroupAction.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['comment'] = (node) => comment = node.getStringValue();
        deserializerMap['groupUuid'] = (node) => groupUuid = node.getStringValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<AuditNestedGroupAction>('action', action, (e) => e?.value);
        writer.writeStringValue('comment', comment);
        writer.writeStringValue('groupUuid', groupUuid);
    }
}
