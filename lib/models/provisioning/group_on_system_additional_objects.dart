// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../audit_info.dart';
import '../group/provisioning_group_linkable_wrapper.dart';
import '../profile/access_profile_provisioning_linkable_wrapper.dart';
import '../serviceaccount/service_account_primer_linkable_wrapper.dart';

/// auto generated
class GroupOnSystemAdditionalObjects implements AdditionalDataHolder, Parsable {
    ///  The accessProfileProvisioning property
    AccessProfileProvisioningLinkableWrapper? accessProfileProvisioning;
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The audit property
    AuditInfo? audit;
    ///  The provgroups property
    ProvisioningGroupLinkableWrapper? provgroups;
    ///  The serviceAccounts property
    ServiceAccountPrimerLinkableWrapper? serviceAccounts;
    /// Instantiates a new [GroupOnSystemAdditionalObjects] and sets the default values.
    GroupOnSystemAdditionalObjects() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GroupOnSystemAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupOnSystemAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['accessProfileProvisioning'] = (node) => accessProfileProvisioning = node.getObjectValue<AccessProfileProvisioningLinkableWrapper>(AccessProfileProvisioningLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        deserializerMap['provgroups'] = (node) => provgroups = node.getObjectValue<ProvisioningGroupLinkableWrapper>(ProvisioningGroupLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['serviceAccounts'] = (node) => serviceAccounts = node.getObjectValue<ServiceAccountPrimerLinkableWrapper>(ServiceAccountPrimerLinkableWrapper.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<AccessProfileProvisioningLinkableWrapper>('accessProfileProvisioning', accessProfileProvisioning);
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeObjectValue<ProvisioningGroupLinkableWrapper>('provgroups', provgroups);
        writer.writeObjectValue<ServiceAccountPrimerLinkableWrapper>('serviceAccounts', serviceAccounts);
        writer.writeAdditionalData(additionalData);
    }
}
