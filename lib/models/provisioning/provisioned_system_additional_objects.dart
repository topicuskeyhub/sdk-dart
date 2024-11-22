// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../audit_info.dart';
import '../client/o_auth2_client_permission_with_client_linkable_wrapper.dart';
import '../mark/item_markers.dart';
import './circuit_breaker_statistics.dart';
import './group_on_system_types.dart';
import './provisioned_account.dart';
import './provisioning_management_permissions.dart';

/// auto generated
class ProvisionedSystemAdditionalObjects implements AdditionalDataHolder, Parsable {
    ///  The account property
    ProvisionedAccount? account;
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The audit property
    AuditInfo? audit;
    ///  The issuedPermissions property
    OAuth2ClientPermissionWithClientLinkableWrapper? issuedPermissions;
    ///  The loginName property
    String? loginName;
    ///  The managementPermissions property
    ProvisioningManagementPermissions? managementPermissions;
    ///  The markers property
    ItemMarkers? markers;
    ///  The statistics property
    CircuitBreakerStatistics? statistics;
    ///  The supportedGroupTypes property
    GroupOnSystemTypes? supportedGroupTypes;
    /// Instantiates a new [ProvisionedSystemAdditionalObjects] and sets the default values.
    ProvisionedSystemAdditionalObjects() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisionedSystemAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedSystemAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['account'] = (node) => account = node.getObjectValue<ProvisionedAccount>(ProvisionedAccount.createFromDiscriminatorValue);
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        deserializerMap['issuedPermissions'] = (node) => issuedPermissions = node.getObjectValue<OAuth2ClientPermissionWithClientLinkableWrapper>(OAuth2ClientPermissionWithClientLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['loginName'] = (node) => loginName = node.getStringValue();
        deserializerMap['managementPermissions'] = (node) => managementPermissions = node.getObjectValue<ProvisioningManagementPermissions>(ProvisioningManagementPermissions.createFromDiscriminatorValue);
        deserializerMap['markers'] = (node) => markers = node.getObjectValue<ItemMarkers>(ItemMarkers.createFromDiscriminatorValue);
        deserializerMap['statistics'] = (node) => statistics = node.getObjectValue<CircuitBreakerStatistics>(CircuitBreakerStatistics.createFromDiscriminatorValue);
        deserializerMap['supportedGroupTypes'] = (node) => supportedGroupTypes = node.getObjectValue<GroupOnSystemTypes>(GroupOnSystemTypes.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ProvisionedAccount>('account', account);
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeObjectValue<OAuth2ClientPermissionWithClientLinkableWrapper>('issuedPermissions', issuedPermissions);
        writer.writeObjectValue<ProvisioningManagementPermissions>('managementPermissions', managementPermissions);
        writer.writeObjectValue<ItemMarkers>('markers', markers);
        writer.writeObjectValue<CircuitBreakerStatistics>('statistics', statistics);
        writer.writeObjectValue<GroupOnSystemTypes>('supportedGroupTypes', supportedGroupTypes);
        writer.writeAdditionalData(additionalData);
    }
}
