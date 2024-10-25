import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';

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
        typeEscaped = 'group.GroupAuditingInfo';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static GroupAuditingInfo createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupAuditingInfo();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
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
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
