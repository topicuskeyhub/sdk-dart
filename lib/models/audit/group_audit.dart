import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../linkable.dart';
import './group_audit_account.dart';
import './group_audit_additional_objects.dart';
import './group_audit_status.dart';
import './nested_group_audit.dart';

class GroupAudit extends Linkable implements Parsable {
    ///  The accounts property
    Iterable<GroupAuditAccount>? accounts;
    ///  The additionalObjects property
    GroupAuditAdditionalObjects? additionalObjects;
    ///  The comment property
    String? comment;
    ///  The createdAt property
    DateTime? createdAt;
    ///  The createdBy property
    String? createdBy;
    ///  The groupName property
    String? groupName;
    ///  The nameOnAudit property
    String? nameOnAudit;
    ///  The nestedGroups property
    Iterable<NestedGroupAudit>? nestedGroups;
    ///  The reviewedAt property
    DateTime? reviewedAt;
    ///  The reviewedBy property
    String? reviewedBy;
    ///  The status property
    GroupAuditStatus? status;
    ///  The submittedAt property
    DateTime? submittedAt;
    ///  The submittedBy property
    String? submittedBy;
    /// Instantiates a new [GroupAudit] and sets the default values.
     GroupAudit() : super() {
        typeEscaped = 'audit.GroupAudit';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static GroupAudit createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupAudit();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['accounts'] = (node) => accounts = node.getCollectionOfObjectValues<GroupAuditAccount>(GroupAuditAccount.createFromDiscriminatorValue);
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<GroupAuditAdditionalObjects>(GroupAuditAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['comment'] = (node) => comment = node.getStringValue();
        deserializerMap['createdAt'] = (node) => createdAt = node.getDateTimeValue();
        deserializerMap['createdBy'] = (node) => createdBy = node.getStringValue();
        deserializerMap['groupName'] = (node) => groupName = node.getStringValue();
        deserializerMap['nameOnAudit'] = (node) => nameOnAudit = node.getStringValue();
        deserializerMap['nestedGroups'] = (node) => nestedGroups = node.getCollectionOfObjectValues<NestedGroupAudit>(NestedGroupAudit.createFromDiscriminatorValue);
        deserializerMap['reviewedAt'] = (node) => reviewedAt = node.getDateTimeValue();
        deserializerMap['reviewedBy'] = (node) => reviewedBy = node.getStringValue();
        deserializerMap['status'] = (node) => status = node.getEnumValue<GroupAuditStatus>((stringValue) => GroupAuditStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['submittedAt'] = (node) => submittedAt = node.getDateTimeValue();
        deserializerMap['submittedBy'] = (node) => submittedBy = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<GroupAuditAccount>('accounts', accounts);
        writer.writeObjectValue<GroupAuditAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeStringValue('comment', comment);
        writer.writeCollectionOfObjectValues<NestedGroupAudit>('nestedGroups', nestedGroups);
        writer.writeEnumValue<GroupAuditStatus>('status', status, (e) => e?.value);
    }
}
