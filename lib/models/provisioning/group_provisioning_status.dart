import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../group/group.dart';
import '../group/group_folder.dart';
import '../non_linkable.dart';
import './account_provisioning_status_report.dart';
import './group_provisioning_status_provisioning_duration.dart';

class GroupProvisioningStatus extends NonLinkable implements Parsable {
    ///  The folder property
    GroupFolder? folder;
    ///  The group property
    Group? group;
    ///  The provisioningDuration property
    GroupProvisioningStatusProvisioningDuration? provisioningDuration;
    ///  The provisioningEndTime property
    DateTime? provisioningEndTime;
    ///  The provisioningPermissionEndTime property
    DateTime? provisioningPermissionEndTime;
    ///  The statusReport property
    AccountProvisioningStatusReport? statusReport;
    ///  The visibleOnDashboard property
    bool? visibleOnDashboard;
    /// Instantiates a new [GroupProvisioningStatus] and sets the default values.
    GroupProvisioningStatus() : super() {
        typeEscaped = 'provisioning.GroupProvisioningStatus';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static GroupProvisioningStatus createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupProvisioningStatus();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['folder'] = (node) => folder = node.getObjectValue<GroupFolder>(GroupFolder.createFromDiscriminatorValue);
        deserializerMap['group'] = (node) => group = node.getObjectValue<Group>(Group.createFromDiscriminatorValue);
        deserializerMap['provisioningDuration'] = (node) => provisioningDuration = node.getObjectValue<GroupProvisioningStatusProvisioningDuration>(GroupProvisioningStatusProvisioningDuration.createFromDiscriminatorValue);
        deserializerMap['provisioningEndTime'] = (node) => provisioningEndTime = node.getDateTimeValue();
        deserializerMap['provisioningPermissionEndTime'] = (node) => provisioningPermissionEndTime = node.getDateTimeValue();
        deserializerMap['statusReport'] = (node) => statusReport = node.getObjectValue<AccountProvisioningStatusReport>(AccountProvisioningStatusReport.createFromDiscriminatorValue);
        deserializerMap['visibleOnDashboard'] = (node) => visibleOnDashboard = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<GroupFolder>('folder', folder);
        writer.writeObjectValue<Group>('group', group);
        writer.writeObjectValue<GroupProvisioningStatusProvisioningDuration>('provisioningDuration', provisioningDuration);
        writer.writeDateTimeValue('provisioningEndTime', provisioningEndTime);
        writer.writeDateTimeValue('provisioningPermissionEndTime', provisioningPermissionEndTime);
        writer.writeObjectValue<AccountProvisioningStatusReport>('statusReport', statusReport);
        writer.writeBoolValue('visibleOnDashboard', value:visibleOnDashboard);
    }
}
