// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';

/// auto generated
class GroupAuditingInfo extends NonLinkable implements Parsable {
    ///  The auditDueDate property
    DateOnly? auditDueDate;
    ///  The lastAuditDate property
    DateOnly? lastAuditDate;
    ///  The nrAccounts property
    int? nrAccounts;
    ///  The nrDisabledAccounts property
    int? nrDisabledAccounts;
    ///  The nrDisabledManagers property
    int? nrDisabledManagers;
    ///  The nrExpiredVaultRecords property
    int? nrExpiredVaultRecords;
    ///  The nrManagers property
    int? nrManagers;
    ///  The nrVaultRecordsWithEndDate property
    int? nrVaultRecordsWithEndDate;
    /// Instantiates a new [GroupAuditingInfo] and sets the default values.
    GroupAuditingInfo() : super() {
        type_ = 'group.GroupAuditingInfo';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GroupAuditingInfo createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupAuditingInfo();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['auditDueDate'] = (node) => auditDueDate = node.getDateOnlyValue();
        deserializerMap['lastAuditDate'] = (node) => lastAuditDate = node.getDateOnlyValue();
        deserializerMap['nrAccounts'] = (node) => nrAccounts = node.getIntValue();
        deserializerMap['nrDisabledAccounts'] = (node) => nrDisabledAccounts = node.getIntValue();
        deserializerMap['nrDisabledManagers'] = (node) => nrDisabledManagers = node.getIntValue();
        deserializerMap['nrExpiredVaultRecords'] = (node) => nrExpiredVaultRecords = node.getIntValue();
        deserializerMap['nrManagers'] = (node) => nrManagers = node.getIntValue();
        deserializerMap['nrVaultRecordsWithEndDate'] = (node) => nrVaultRecordsWithEndDate = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
