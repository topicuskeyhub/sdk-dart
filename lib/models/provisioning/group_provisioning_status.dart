// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../group/group.dart';
import '../group/group_folder.dart';
import '../non_linkable.dart';
import './account_provisioning_status_report.dart';

/// auto generated
class GroupProvisioningStatus extends NonLinkable implements Parsable {
    ///  The folder property
    GroupFolder? folder;
    ///  The group property
    Group? group;
    ///  The provisioningDuration property
    Duration? provisioningDuration;
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
        type_ = 'provisioning.GroupProvisioningStatus';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GroupProvisioningStatus createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupProvisioningStatus();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['folder'] = (node) => folder = node.getObjectValue<GroupFolder>(GroupFolder.createFromDiscriminatorValue);
        deserializerMap['group'] = (node) => group = node.getObjectValue<Group>(Group.createFromDiscriminatorValue);
        deserializerMap['provisioningDuration'] = (node) => provisioningDuration = node.getDurationValue();
        deserializerMap['provisioningEndTime'] = (node) => provisioningEndTime = node.getDateTimeValue();
        deserializerMap['provisioningPermissionEndTime'] = (node) => provisioningPermissionEndTime = node.getDateTimeValue();
        deserializerMap['statusReport'] = (node) => statusReport = node.getObjectValue<AccountProvisioningStatusReport>(AccountProvisioningStatusReport.createFromDiscriminatorValue);
        deserializerMap['visibleOnDashboard'] = (node) => visibleOnDashboard = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<GroupFolder>('folder', folder);
        writer.writeObjectValue<Group>('group', group);
        writer.writeDateTimeValue('provisioningEndTime', provisioningEndTime);
        writer.writeObjectValue<AccountProvisioningStatusReport>('statusReport', statusReport);
    }
}
