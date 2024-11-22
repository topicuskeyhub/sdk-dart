// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../group/group_rights.dart';
import '../linkable.dart';
import './audit_account_action.dart';

/// auto generated
class GroupAuditAccount extends Linkable implements Parsable {
    ///  The accountUuid property
    String? accountUuid;
    ///  The accountValid property
    bool? accountValid;
    ///  The action property
    AuditAccountAction? action;
    ///  The comment property
    String? comment;
    ///  The disconnectedNested property
    bool? disconnectedNested;
    ///  The displayName property
    String? displayName;
    ///  The endDate property
    DateOnly? endDate;
    ///  The lastActive property
    DateTime? lastActive;
    ///  The lastUsed property
    DateOnly? lastUsed;
    ///  The nested property
    bool? nested;
    ///  The rights property
    GroupRights? rights;
    ///  The username property
    String? username;
    /// Instantiates a new [GroupAuditAccount] and sets the default values.
    GroupAuditAccount() : super() {
        type_ = 'audit.GroupAuditAccount';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GroupAuditAccount createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupAuditAccount();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['accountUuid'] = (node) => accountUuid = node.getStringValue();
        deserializerMap['accountValid'] = (node) => accountValid = node.getBoolValue();
        deserializerMap['action'] = (node) => action = node.getEnumValue<AuditAccountAction>((stringValue) => AuditAccountAction.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['comment'] = (node) => comment = node.getStringValue();
        deserializerMap['disconnectedNested'] = (node) => disconnectedNested = node.getBoolValue();
        deserializerMap['displayName'] = (node) => displayName = node.getStringValue();
        deserializerMap['endDate'] = (node) => endDate = node.getDateOnlyValue();
        deserializerMap['lastActive'] = (node) => lastActive = node.getDateTimeValue();
        deserializerMap['lastUsed'] = (node) => lastUsed = node.getDateOnlyValue();
        deserializerMap['nested'] = (node) => nested = node.getBoolValue();
        deserializerMap['rights'] = (node) => rights = node.getEnumValue<GroupRights>((stringValue) => GroupRights.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['username'] = (node) => username = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('accountUuid', accountUuid);
        writer.writeEnumValue<AuditAccountAction>('action', action, (e) => e?.value);
        writer.writeStringValue('comment', comment);
        writer.writeEnumValue<GroupRights>('rights', rights, (e) => e?.value);
    }
}
