import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../audit_info.dart';
import '../group/account_group_linkable_wrapper.dart';
import '../vault/vault.dart';
import './account_recovery_status.dart';
import './account_settings.dart';
import './stored_account_attributes.dart';

class AccountAdditionalObjects implements AdditionalDataHolder, Parsable {
    ///  The activeLogin property
    bool? activeLogin;
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The audit property
    AuditInfo? audit;
    ///  The groups property
    AccountGroupLinkableWrapper? groups;
    ///  The pendingRecoveryRequests property
    AccountRecoveryStatus? pendingRecoveryRequests;
    ///  The settings property
    AccountSettings? settings;
    ///  The storedAttributes property
    StoredAccountAttributes? storedAttributes;
    ///  The vault property
    Vault? vault;
    /// Instantiates a new [AccountAdditionalObjects] and sets the default values.
    AccountAdditionalObjects() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AccountAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['activeLogin'] = (node) => activeLogin = node.getBoolValue();
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        deserializerMap['groups'] = (node) => groups = node.getObjectValue<AccountGroupLinkableWrapper>(AccountGroupLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['pendingRecoveryRequests'] = (node) => pendingRecoveryRequests = node.getObjectValue<AccountRecoveryStatus>(AccountRecoveryStatus.createFromDiscriminatorValue);
        deserializerMap['settings'] = (node) => settings = node.getObjectValue<AccountSettings>(AccountSettings.createFromDiscriminatorValue);
        deserializerMap['storedAttributes'] = (node) => storedAttributes = node.getObjectValue<StoredAccountAttributes>(StoredAccountAttributes.createFromDiscriminatorValue);
        deserializerMap['vault'] = (node) => vault = node.getObjectValue<Vault>(Vault.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeObjectValue<AccountGroupLinkableWrapper>('groups', groups);
        writer.writeObjectValue<AccountRecoveryStatus>('pendingRecoveryRequests', pendingRecoveryRequests);
        writer.writeObjectValue<AccountSettings>('settings', settings);
        writer.writeObjectValue<StoredAccountAttributes>('storedAttributes', storedAttributes);
        writer.writeObjectValue<Vault>('vault', vault);
        writer.writeAdditionalData(additionalData);
    }
}
