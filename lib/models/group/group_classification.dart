import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../month.dart';
import './group_classification_additional_objects.dart';
import './group_classification_primer.dart';

class GroupClassification extends GroupClassificationPrimer implements Parsable {
    ///  The additionalObjects property
    GroupClassificationAdditionalObjects? additionalObjects;
    ///  The authorizingGroupAuditingRequired property
    bool? authorizingGroupAuditingRequired;
    ///  The authorizingGroupDelegationRequired property
    bool? authorizingGroupDelegationRequired;
    ///  The authorizingGroupMembershipRequired property
    bool? authorizingGroupMembershipRequired;
    ///  The authorizingGroupProvisioningRequired property
    bool? authorizingGroupProvisioningRequired;
    ///  The defaultClassification property
    bool? defaultClassification;
    ///  The description property
    String? description;
    ///  The maximumAuditInterval property
    int? maximumAuditInterval;
    ///  The minimumNrManagers property
    int? minimumNrManagers;
    ///  The recordTrailRequired property
    bool? recordTrailRequired;
    ///  The requiredMonths property
    Iterable<Month>? requiredMonths;
    ///  The rotatingPasswordRequired property
    bool? rotatingPasswordRequired;
    ///  The vaultRequiresActivation property
    bool? vaultRequiresActivation;
    /// Instantiates a new [GroupClassification] and sets the default values.
     GroupClassification() : super() {
        typeEscaped = 'group.GroupClassification';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static GroupClassification createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupClassification();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<GroupClassificationAdditionalObjects>(GroupClassificationAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['authorizingGroupAuditingRequired'] = (node) => authorizingGroupAuditingRequired = node.getBoolValue();
        deserializerMap['authorizingGroupDelegationRequired'] = (node) => authorizingGroupDelegationRequired = node.getBoolValue();
        deserializerMap['authorizingGroupMembershipRequired'] = (node) => authorizingGroupMembershipRequired = node.getBoolValue();
        deserializerMap['authorizingGroupProvisioningRequired'] = (node) => authorizingGroupProvisioningRequired = node.getBoolValue();
        deserializerMap['defaultClassification'] = (node) => defaultClassification = node.getBoolValue();
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['maximumAuditInterval'] = (node) => maximumAuditInterval = node.getIntValue();
        deserializerMap['minimumNrManagers'] = (node) => minimumNrManagers = node.getIntValue();
        deserializerMap['recordTrailRequired'] = (node) => recordTrailRequired = node.getBoolValue();
        deserializerMap['requiredMonths'] = (node) => requiredMonths = node.getCollectionOfEnumValues<Month>((stringValue) => Month.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['rotatingPasswordRequired'] = (node) => rotatingPasswordRequired = node.getBoolValue();
        deserializerMap['vaultRequiresActivation'] = (node) => vaultRequiresActivation = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<GroupClassificationAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeBoolValue('authorizingGroupAuditingRequired', value:authorizingGroupAuditingRequired);
        writer.writeBoolValue('authorizingGroupDelegationRequired', value:authorizingGroupDelegationRequired);
        writer.writeBoolValue('authorizingGroupMembershipRequired', value:authorizingGroupMembershipRequired);
        writer.writeBoolValue('authorizingGroupProvisioningRequired', value:authorizingGroupProvisioningRequired);
        writer.writeStringValue('description', description);
        writer.writeIntValue('maximumAuditInterval', maximumAuditInterval);
        writer.writeIntValue('minimumNrManagers', minimumNrManagers);
        writer.writeBoolValue('recordTrailRequired', value:recordTrailRequired);
        writer.writeCollectionOfEnumValues<Month>('requiredMonths', requiredMonths, (e) => e?.value);
        writer.writeBoolValue('rotatingPasswordRequired', value:rotatingPasswordRequired);
        writer.writeBoolValue('vaultRequiresActivation', value:vaultRequiresActivation);
    }
}
